/******************************************************************************
 * Project: DDRC HTTP SERVER
 * File: main.h
 * Description: Main includes
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

#ifndef MAIN_H
#define MAIN_H

#include <sys/param.h>

#include "esp_event.h"
#include "esp_log.h"
#include "esp_system.h"

#include "nvs_flash.h"
#include "esp_wifi.h"
#include "esp_netif.h"
#include "lwip/inet.h"

#include "esp_http_server.h"
#include "http_server.h"
#include "pwm_motor.h"
#include "adc_bat.h"
#include "encoders.h"
#include "leds.h"
#include "buttons.h"
#include "gpio_conf.h"



#endif /* MAIN_H */
