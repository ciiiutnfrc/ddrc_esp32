/******************************************************************************
 * Project: DDRC HTTP SERVER
 * File: leds.c
 * Description: Functions for LEDs drive
 * Created on: 05 jun. 2022
 * Last modified date: 21 Aug. 2022
 * Version: 0.0.1
 *
 * Este archivo complementa el Proyecto Final de grado de:
 * Albarran, Gustavo - Nicolodi, Juan - Ruiz, Dante
 * UNIVERSIDAD TECNOLOGICA NACIONAL - Fac. Reg. Cordoba
 *
 *	NOTE: 
 *
 ******************************************************************************/

#include "leds.h"
#include "buttons.h"
static const char *TAG = "leds";



static int LED = 0;



/**
* @brief    init the LEDs outs ( set to OFF status)
*
* @param   	- void
*           
* @return  
*          - void
*/
void led_init(void){

        gpio_set_level(LED1, LED_OFF);
        gpio_set_level(LED2, LED_OFF);
        gpio_set_level(LED3, LED_OFF);
        gpio_set_level(LED4, LED_OFF);
}

/**
* @brief    Turn on the LEDNUM led
*
* @param   	- int LEDNUM : GPIO number of LED
*           
* @return  
*          - void
*/
void led_on(int LEDNUM){
    gpio_set_level(LEDNUM, LED_ON);
    ESP_LOGI(TAG, "ON LED %d\n", LEDNUM);
}

/**
* @brief    Turn Off the LEDNUM led
*
* @param   	- int LEDNUM : GPIO number of LED
*           
* @return  
*          - void
*/
void led_off(int LEDNUM){
    gpio_set_level( LEDNUM, LED_OFF);
    ESP_LOGI(TAG, "OFF LED %d\n", LEDNUM);
}

/**
* @brief    Toggle LED
*
* @param   	- LED: Gpio number of LED
*           
* @return  
*          - void
*/
void led_toggle(int LEDNUM){
    if(led_read(LEDNUM) == LED_OFF){
        led_on(LEDNUM);
        }
        else {led_off(LEDNUM);
    }
}


/**
* @brief    Read LED status 
*
* @param   	- LED: Gpio number of LED
*           
* @return  
*          - 0 if LED is Off
*          - 1 if LED is On
*/
int led_read(int LEDNUM){
    int val;
    val = gpio_get_level(LEDNUM);
    ESP_LOGI(TAG, "GPIO: %d - VALOR: %d", LEDNUM, val);
    return val;
}

// ---------- Task blink example --------------
/*
static TaskHandle_t handler_blink = NULL;
*/
/**
* @brief    Blink the LEDNUM led. Function to call task blink.
*
* @param   	- int LEDNUM : GPIO number of LED
*           
* @return  
*          - void
*/
/*void led_blink(int LEDNUM){
    LED = LEDNUM;
    if (handler_blink == NULL){
        xTaskCreate(task_led_blink, "task_led_blink", 2048, NULL, 10, &handler_blink);
        }else{
            vTaskDelete( handler_blink );
            handler_blink = NULL; 
            led_off(LEDNUM);
            }
}*/


/**
* @brief    Task to keep blinking the LED. Called by led_blink()
*
* @param   	- void
*           
* @return  
*          - void
*/
/*void task_led_blink(void* arg)
{
    
    ESP_LOGI(TAG, "Blink LED %d\n", LED);
    while( 1) {
        vTaskDelay(1000 /(2 * portTICK_PERIOD_MS));
        led_on(LED);
        vTaskDelay(1000 /(2 * portTICK_PERIOD_MS));
        led_off(LED);
    }

}*/
