/******************************************************************************
 * Project: DDRC HTTP SERVER
 * File: http_server.h
 * Description: Definitions for http server
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

#ifndef HTTP_SERVER_H
#define HTTP_SERVER_H


#include <sys/param.h>

#include "esp_event.h"
#include "esp_log.h"
#include "esp_system.h"

#include "nvs_flash.h"
#include "esp_wifi.h"
#include "esp_netif.h"
#include "lwip/inet.h"

#include "esp_http_server.h"


#pragma once

#ifdef __cplusplus
extern "C" {
#endif

#define EXAMPLE_ESP_WIFI_SSID CONFIG_ESP_WIFI_SSID
#define EXAMPLE_ESP_WIFI_PASS CONFIG_ESP_WIFI_PASSWORD
#define EXAMPLE_MAX_STA_CONN CONFIG_ESP_MAX_STA_CONN


/**
* @brief    Check for WiFi connections
*
* @param   	- void
*           
* @return  
*          - void
*/
void wifi_event_handler(void *arg, esp_event_base_t event_base,
                               int32_t event_id, void *event_data);

/**
* @brief    Check the received command and execute the order
*
* @param   	- param : pointer to the received string
*
* @return  
*          - void
*/
void exec_command(char * param);


/**
* @brief    Check for WiFi connections
*
* @param   	- void
*           
* @return  
*          - void
*/
void wifi_init_softap(void);

// HTTP GET Handler
esp_err_t root_get_handler(httpd_req_t *req);

// HTTP GET Handler
esp_err_t web_get_handler(httpd_req_t *req);


// HTTP GET Handler
esp_err_t control_get_handler(httpd_req_t *req);

// HTTP Error (404) Handler - Redirects all requests to the root page
esp_err_t http_404_error_handler(httpd_req_t *req, httpd_err_code_t err);

httpd_handle_t start_webserver(void);

#ifdef __cplusplus
}
#endif

#endif /* HTTP_SERVER_H */
