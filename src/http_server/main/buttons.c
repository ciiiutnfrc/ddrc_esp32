/******************************************************************************
 * Project: DDRC HTTP SERVER
 * File: buttons.c
 * Description: Functions for buttons
 * Created on: 05 jun. 2022
 * Last modified date: 20 Aug. 2022
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
static const char *TAG = "buttons";

QueueHandle_t button_evt_queue = NULL;

/**
* @brief    Check for buttons events and send queue to task_buttons()
*
* @param   	- void
*           
* @return  
*          - void
*/
static void IRAM_ATTR gpio_isr_handler(void* arg)
{
    uint32_t gpio_num = (uint32_t) arg;
    xQueueSendFromISR(button_evt_queue, &gpio_num, NULL);
}


/**
* @brief    Check for buttons events
*
* @param   	- void
*           
* @return  
*          - void
*/
static void task_buttons(void* arg)
{
    uint32_t io_num;
    for(;;) {
        if(xQueueReceive(button_evt_queue, &io_num, portMAX_DELAY)) {
           ESP_LOGI(TAG, "LEDNUM: %ld", io_num);
            vTaskDelay(100 /( portTICK_PERIOD_MS)); // antirebote
           if (io_num == PUL1){ // button 1 actions
                    ESP_LOGI(TAG, "PULSADOR 1");
                    led_toggle(LED1);
           }
           if (io_num == PUL2){ // button 2 actions
                    ESP_LOGI(TAG, "PULSADOR 2");
                    led_toggle(LED2);
                    
           }
           if (io_num == PUL3){ // button 3 actions
                    ESP_LOGI(TAG, "PULSADOR 3");
                    led_toggle(LED3);
           }
        }
    }
}

/**
* @brief    init the buttons inputs
*
* @param   	- void
*           
* @return  
*          - void
*/
void buttons_init(void){

    //create a queue to handle gpio event from isr
    button_evt_queue = xQueueCreate(10, sizeof(uint32_t));
    //start gpio task
    xTaskCreate(task_buttons, "task_buttons", 2048, NULL, 10, NULL);

    //install gpio isr service
    gpio_install_isr_service(ESP_INTR_FLAG_DEFAULT);
    
    //hook isr handler for specific gpio pin
    gpio_isr_handler_add(PUL1, gpio_isr_handler, (void*) PUL1);
    gpio_isr_handler_add(PUL2, gpio_isr_handler, (void*) PUL2);
    gpio_isr_handler_add(PUL3, gpio_isr_handler, (void*) PUL3);

}
