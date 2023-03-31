/******************************************************************************
 * Project: DDRC HTTP SERVER
 * File: encoders.c
 * Description: Functions for read and parce the wheel's encoders
 * Created on: 12 jun. 2022
 * Last modified date: 12 jun. 2022
 * Version: 0.0.1
 *
 * Este archivo complementa el Proyecto Final de grado de:
 * Albarran, Gustavo - Nicolodi, Juan - Ruiz, Dante
 * UNIVERSIDAD TECNOLOGICA NACIONAL - Fac. Reg. Cordoba
 *
 *	NOTE: 
 *
 ******************************************************************************/

#include "encoders.h"
static const char *TAG = "encoders";

static TaskHandle_t handler_task_encoders_vel = NULL;
static rotary_encoder_t *encoder1 = NULL;
static rotary_encoder_t *encoder2 = NULL;


float enc1_vel = 0; // Encoders measure velocity
float enc2_vel = 0;


/**
* @brief   Task for calculate angular velocity
*
* @param   - void
*
* @return  - void
* 
*/
void task_encoders_vel(void *arg){
    
    // init and finish encoders values
    float pos_enc1_1, pos_enc1_2;
    float pos_enc2_1, pos_enc2_2;
    // delta of time, milisec
    int delta_time = 100;
    
    while(1){
        // read init positions
        pos_enc1_1 = encoder1->get_counter_value(encoder1);
        pos_enc2_1 = encoder2->get_counter_value(encoder2);
        
        vTaskDelay(pdMS_TO_TICKS(delta_time)); // wait 100 ms
        
        // read finish positions
        pos_enc1_2 = encoder1->get_counter_value(encoder1);
        pos_enc2_2 = encoder2->get_counter_value(encoder2);
        
        // reset positions to prevent overflow
        // encoder1->del(encoder1);
        // encoder2->del(encoder2);
        // Parse to rad/seg
        enc1_vel = 2*3.14*(pos_enc1_2-pos_enc1_1)/(ENCODER1_STEPS*delta_time*0.001);
        enc2_vel = 2*3.14*(pos_enc2_2-pos_enc2_1)/(ENCODER2_STEPS*delta_time*0.001);
        
        
    }
}


/**
* @brief    Init the encoders
*
* @param   	- void
*
* @return  
*          - void
*/
void encoders_init(void){
    // Rotary encoder underlying device is represented by a PCNT unit in this example
    uint32_t pcnt_unit1 = 0;
    uint32_t pcnt_unit2 = 1;

    // Create rotary encoder1 instance
    rotary_encoder_config_t config1 = ROTARY_ENCODER_DEFAULT_CONFIG((rotary_encoder_dev_t)pcnt_unit1, ENC_DER_A, ENC_DER_B);
    ESP_ERROR_CHECK(rotary_encoder_new_ec11(&config1, &encoder1));
    // Filter out glitch (1us)
    ESP_ERROR_CHECK(encoder1->set_glitch_filter(encoder1, 1));
    

    // Create rotary encoder2 instance
    rotary_encoder_config_t config2 = ROTARY_ENCODER_DEFAULT_CONFIG((rotary_encoder_dev_t)pcnt_unit2, ENC_IZQ_A, ENC_IZQ_B);
    ESP_ERROR_CHECK(rotary_encoder_new_ec11(&config2, &encoder2));
    // Filter out glitch (1us)
    ESP_ERROR_CHECK(encoder2->set_glitch_filter(encoder2, 1));

    // Start encoders
    ESP_ERROR_CHECK(encoder1->start(encoder1));
    ESP_ERROR_CHECK(encoder2->start(encoder2));



    // Task for update encoders angular velocity
    xTaskCreate(task_encoders_vel, "task_encoders_vel", 
        TASK_ENCODERS_VEL_STACK_SIZE, NULL, 16, &handler_task_encoders_vel);


    // Report counter value
    while (1) {
                        
        ESP_LOGI(TAG, "|Encoder 1: %f  | Encoder 2: %f|", enc1_vel,enc2_vel);
        vTaskDelay(pdMS_TO_TICKS(1000));
    }
}
