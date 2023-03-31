/******************************************************************************
 * Project: DDRC HTTP SERVER
 * File: leds.h
 * Description: Functions for LEDs drive
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

#ifndef LEDS_H
#define LEDS_H

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "esp_log.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/queue.h"
#include "driver/gpio.h"
#include "board.h" // GPIO Pins


#define LED_OFF     1
#define LED_ON      0

/**
* @brief    ON LED
*
* @param   	- LED: Gpio number of LED
*           
* @return  
*          - void
*/
void led_on(int LED);


/**
* @brief    OFF LED
*
* @param   	- LED: Gpio number of LED
*           
* @return  
*          - void
*/
void led_off(int LED);


/**
* @brief    Toggle LED
*
* @param   	- LED: Gpio number of LED
*           
* @return  
*          - void
*/
void led_toggle(int LED);


/**
* @brief    Read LED status
*
* @param   	- LED: Gpio number of LED
*           
* @return  
*          - 0 if LED is Off
*          - 1 if LED is On
*/
int led_read(int LED);

/**
* @brief    init the LEDs outs
*
* @param   	- void
*           
* @return  
*          - void
*/
void led_init(void);

// ---------- Task blink example --------------
/**
* @brief    Blink the LEDNUM led
*
* @param   	- int LEDNUM : GPIO number of LED
*           
* @return  
*          - void
*/
// void led_blink(int LEDNUM);

/**
* @brief    Task to keep blinking the LED. Called by led_blink()
*
* @param   	- void
*           
* @return  
*          - void
*/
// void task_led_blink(void* arg);

#endif /* LEDS_H */
