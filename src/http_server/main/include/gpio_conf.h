/******************************************************************************
 * Project: DDRC HTTP SERVER
 * File: gpio_conf.h
 * Description: Definitions GPIO
 * Created on: 05 aug. 2022
 * Last modified date: 05 Aug. 2022
 * Version: 0.0.1
 *
 * Este archivo complementa el Proyecto Final de grado de:
 * Albarran, Gustavo - Nicolodi, Juan - Ruiz, Dante
 * UNIVERSIDAD TECNOLOGICA NACIONAL - Fac. Reg. Cordoba
 *
 *	NOTE: 
 *
 ******************************************************************************/

#ifndef GPIO_CONF_H
#define GPIO_CONF_H


#include <stdio.h>
#include "esp_log.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/queue.h"
#include "driver/gptimer.h"
#include "driver/mcpwm.h"
#include "driver/gpio.h"
#include "board.h" // GPIO Pins


/**
* @brief    init the GPIO  in/out pins
*
* @param   	- void
*           
* @return  
*          - void
*/
void gpio_init(void);

#endif /* GPIO_CONF_H */
