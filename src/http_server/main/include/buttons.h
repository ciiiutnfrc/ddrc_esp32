/******************************************************************************
 * Project: DDRC HTTP SERVER
 * File: buttons.h
 * Description: Functions for buttons
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

#ifndef BUTTONS_H
#define BUTTONS_H

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "esp_log.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/queue.h"
#include "driver/gpio.h"
#include "board.h" // GPIO Pins


#define ESP_INTR_FLAG_DEFAULT 0

/**
* @brief    Check for buttons events
*
* @param   	- void
*           
* @return  
*          - void
*/
static void task_buttons(void* arg);


/**
* @brief    init the buttons inputs
*
* @param   	- void
*           
* @return  
*          - void
*/
void buttons_init(void);

#endif /* BUTTONS_H */
