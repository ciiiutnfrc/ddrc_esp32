/******************************************************************************
 * Project: DDRC HTTP SERVER
 * File: adc_bat.c
 * Description: ADC Battery level read
 * Created on: 05 jun. 2022
 * Last modified date: 05 jun. 2022
 * Version: 0.0.1
 *
 * Este archivo complementa el Proyecto Final de grado de:
 * Albarran, Gustavo - Nicolodi, Juan - Ruiz, Dante
 * UNIVERSIDAD TECNOLOGICA NACIONAL - Fac. Reg. Cordoba
 *
 *	NOTE: 
 *
 ******************************************************************************/
#include "adc_bat.h"
static const char *TAG = "adc_bat";

static esp_adc_cal_characteristics_t *adc_chars;

static const adc_channel_t battery1 = ADC_CHANNEL_0;     //GPIO36 if ADC1
static const adc_channel_t battery2 = ADC_CHANNEL_3;     //GPIO39 if ADC2
#if CONFIG_IDF_TARGET_ESP32
static const adc_bits_width_t width = ADC_WIDTH_BIT_12;
#elif CONFIG_IDF_TARGET_ESP32S2
static const adc_bits_width_t width = ADC_WIDTH_BIT_13;
#endif
/*     ATTENUATION :
*        - ADC_ATTEN_DB_0   : 100mV ~ 950mV
*        - ADC_ATTEN_DB_2_5 : 100mV ~ 1250mV
*        - ADC_ATTEN_DB_6   : 150mV ~ 950mV
*        - ADC_ATTEN_DB_11  : 150mV ~ 2450mV
*/
static const adc_atten_t atten = ADC_ATTEN_DB_11;   // Attenuation
static const adc_unit_t unit = ADC_UNIT_1;          // ADC1

static TaskHandle_t handler_task_battery_level = NULL;

float bat1_val = 0; // tensión de baterias, en mV
float bat2_val = 0;

/**
* @brief   Check eFuse ADC calibration capability
*
* https://docs.espressif.com/projects/esp-idf/en/v3.3/api-reference/peripherals/adc.html#adc-calibration
*/
void check_efuse(void)
{
#if CONFIG_IDF_TARGET_ESP32
    //Check if TP is burned into eFuse
    if (esp_adc_cal_check_efuse(ESP_ADC_CAL_VAL_EFUSE_TP) == ESP_OK) {
        ESP_LOGI(TAG, "eFuse Two Point: Supported\n");
    } else {
        ESP_LOGE(TAG, "eFuse Two Point: NOT supported\n");
    }
    //Check Vref is burned into eFuse
    if (esp_adc_cal_check_efuse(ESP_ADC_CAL_VAL_EFUSE_VREF) == ESP_OK) {
        ESP_LOGI(TAG, "eFuse Vref: Supported\n");
    } else {
        ESP_LOGE(TAG, "eFuse Vref: NOT supported\n");
    }
#elif CONFIG_IDF_TARGET_ESP32S2
    if (esp_adc_cal_check_efuse(ESP_ADC_CAL_VAL_EFUSE_TP) == ESP_OK) {
        ESP_LOGI(TAG, "eFuse Two Point: Supported\n");
    } else {
        ESP_LOGE(TAG, "Cannot retrieve eFuse Two Point calibration values. Default calibration values will be used.\n");
    }
#else
#error "This example is configured for ESP32/ESP32S2."
#endif
}

/**
* @brief   Print eFuse type
*
* @param   - val_type   esp_adc_cal_value_t type value
*
* @return  - void
* 
*/
void print_char_val_type(esp_adc_cal_value_t val_type)
{
    if (val_type == ESP_ADC_CAL_VAL_EFUSE_TP) {
        ESP_LOGI(TAG, "Characterized using Two Point Value\n");
    } else if (val_type == ESP_ADC_CAL_VAL_EFUSE_VREF) {
        ESP_LOGI(TAG, "Characterized using eFuse Vref\n");
    } else {
        ESP_LOGI(TAG, "Characterized using Default Vref\n");
    }
}


/**
* @brief   Task for update ""Battery level status" value
*
* @param   - void
*
* @return  - void
* 
*/
void task_battery_level(void *arg){

    uint32_t mvolts1 = 0;
    uint32_t mvolts2 = 0;

    float V_Bat1 = 0;
    float V_Bat2 = 0;

    //Characterize ADC
    adc_chars = calloc(1, sizeof(esp_adc_cal_characteristics_t));
    esp_adc_cal_value_t val_type = esp_adc_cal_characterize(unit, atten, width, DEFAULT_VREF, adc_chars);
    print_char_val_type(val_type);

    //Continuously sample ADC1
    while (1) {
        uint32_t bat1_reading = 0;
        uint32_t bat2_reading = 0;
        //Multisampling
        for (int i = 0; i < NO_OF_SAMPLES; i++) {
            if (unit == ADC_UNIT_1) {
                bat1_reading += adc1_get_raw((adc1_channel_t)battery1);
                bat2_reading += adc1_get_raw((adc1_channel_t)battery2);
            } else {
                int raw1,raw2;
                adc2_get_raw((adc2_channel_t)battery1, width, &raw1);
                bat1_reading += raw1;
                adc2_get_raw((adc2_channel_t)battery2, width, &raw2);
                bat2_reading += raw2;
            }
        }
        bat1_reading /= NO_OF_SAMPLES;
        bat2_reading /= NO_OF_SAMPLES;
        //Convert adc_reading to voltage in mV
        mvolts1 = esp_adc_cal_raw_to_voltage(bat1_reading, adc_chars);
        mvolts2 = esp_adc_cal_raw_to_voltage(bat2_reading, adc_chars);
        
        // mV to V conversion
        V_Bat1 = ((((6000 / (BAT1_B_VALUE-BAT1_A_VALUE)) * 
                                         (mvolts1 - BAT1_A_VALUE)) + 9000) / 1000);
        V_Bat2 = ((((6000 / (BAT2_B_VALUE-BAT2_A_VALUE)) * 
                                         (mvolts2 - BAT2_A_VALUE)) + 9000) / 1000);

        ESP_LOGI(TAG, "|Bateria 1: %ldmV | Bateria 2: %ldmV|", mvolts1, mvolts2);
        
        //if((V_Bat1 < 9) || (V_Bat2 < 9)){
         //   ESP_LOGE(TAG, "BATTERY LOW");
       // }else{
            ESP_LOGI(TAG, "|Bateria 1: %2.2fV | Bateria 2: %2.2fV|", V_Bat1, V_Bat2);
       // }
        
        battery_voltage_set(V_Bat1 ,V_Bat2);
        vTaskDelay(pdMS_TO_TICKS(1000));
    }

}

/**
* @brief   Write the values of the global variables bat1_val and bat2_val
*               (to show on web page)
*
* @param    -float voltage1: Voltage of Battery 1, in V
*           -float voltage2: Voltage of Battery 2, in V
*
* @return  - void
* 
*/
void battery_voltage_set(float voltage1, float voltage2){
        bat1_val =  voltage1;
        bat2_val =  voltage2;
}


/**
* @brief   Read the values of the global variables bat1_val and bat2_val
*
* @param   - Battery number: BATERIA1 or BATERIA2
*
* @return  - Battery Voltage value (Votls)
* 
*/
float battery_voltage_get(int battery){
        if (battery == BATERIA1) return bat1_val;
            else if (battery == BATERIA2) return bat2_val;
                    else return 0;
}

/**
* @brief   COnfig ADC channels and start task_battery_level()
*
* @param   - void
*
* @return  - void
* 
*/
void adc_init(void)
{
    //Check if Two Point or Vref are burned into eFuse
    check_efuse();
  

    //Configure ADC
    if (unit == ADC_UNIT_1) {
        adc1_config_width(width);
        adc1_config_channel_atten(battery1, atten);
        adc1_config_channel_atten(battery2, atten);
    } else {
        adc2_config_channel_atten((adc2_channel_t)battery1, atten);
        adc2_config_channel_atten((adc2_channel_t)battery2, atten);
    }

     // Task for update Battery level status
    xTaskCreate(task_battery_level, "task_battery_level", 
        TASK_BATTERY_LEVEL_STACK_SIZE, NULL, 16, &handler_task_battery_level);

 
}
