/******************************************************************************
 * Project: DDRC HTTP SERVER
 * File: http_server.c
 * Description: Create a http server, with three html pages
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


#include "esp_mac.h"
#include "http_server.h"
#include "pwm_motor.h"
#include "adc_bat.h"
#include "leds.h"

extern const char root_start[] asm("_binary_root_html_start");
extern const char root_end[] asm("_binary_root_html_end");

extern const char datos_start[] asm("_binary_datos_html_start");
extern const char datos_end[] asm("_binary_datos_html_end");

extern const char control_start[] asm("_binary_control_html_start");
extern const char control_end[] asm("_binary_control_html_end");

static const char *TAG = "http_server";

char buffer[2000];  // Espacio donde se construyen las paginas html
extern float bat1_val; // tensión de baterias, en mV
extern float bat2_val;

extern float enc1_vel; // Encoders measure velocity
extern float enc2_vel;


/**
* @brief    Check for WiFi connections
*
* @param   	- void
*           
* @return  
*          - void
*/
void wifi_event_handler(void *arg, esp_event_base_t event_base,
                               int32_t event_id, void *event_data)
{
    if (event_id == WIFI_EVENT_AP_STACONNECTED) {
        wifi_event_ap_staconnected_t *event = (wifi_event_ap_staconnected_t *)event_data;
        ESP_LOGI(TAG, "station " MACSTR " join, AID=%d",
                 MAC2STR(event->mac), event->aid);
    } else if (event_id == WIFI_EVENT_AP_STADISCONNECTED) {
        wifi_event_ap_stadisconnected_t *event = (wifi_event_ap_stadisconnected_t *)event_data;
        ESP_LOGI(TAG, "station " MACSTR " leave, AID=%d",
                 MAC2STR(event->mac), event->aid);
    }
}


/**
* @brief    Run access point over WiFi
*
* @param   	- void
*           
* @return  
*          - void
*/
void wifi_init_softap(void)
{
    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    ESP_ERROR_CHECK(esp_wifi_init(&cfg));

    ESP_ERROR_CHECK(esp_event_handler_register(WIFI_EVENT, ESP_EVENT_ANY_ID, &wifi_event_handler, NULL));
    
    // wifi configuration: to change > idf.py menuconfig
    wifi_config_t wifi_config = {
        .ap = {
            .ssid = EXAMPLE_ESP_WIFI_SSID,
            .ssid_len = strlen(EXAMPLE_ESP_WIFI_SSID),
            .password = EXAMPLE_ESP_WIFI_PASS,
            .max_connection = EXAMPLE_MAX_STA_CONN,
            .authmode = WIFI_AUTH_WPA_WPA2_PSK
        },
    };
    if (strlen(EXAMPLE_ESP_WIFI_PASS) == 0) {
        wifi_config.ap.authmode = WIFI_AUTH_OPEN;
    }

    ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_AP));
    ESP_ERROR_CHECK(esp_wifi_set_config(ESP_IF_WIFI_AP, &wifi_config));
    ESP_ERROR_CHECK(esp_wifi_start());

    esp_netif_ip_info_t ip_info;
    esp_netif_get_ip_info(esp_netif_get_handle_from_ifkey("WIFI_AP_DEF"), &ip_info);

    char ip_addr[16];
    inet_ntoa_r(ip_info.ip.addr, ip_addr, 16);
    ESP_LOGI(TAG, "================CONFIGURACION==============");
    ESP_LOGI(TAG, "Set up softAP with IP: %s", ip_addr);
    ESP_LOGI(TAG, "wifi_init_softap finished. SSID:'%s' password:'%s'",
             EXAMPLE_ESP_WIFI_SSID, EXAMPLE_ESP_WIFI_PASS);
    ESP_LOGI(TAG, "===========================================");
}

// HTTP GET Handler
esp_err_t root_get_handler(httpd_req_t *req)
{
    const uint32_t root_len = root_end - root_start;

    //ESP_LOGI(TAG, "Serve root");
    httpd_resp_set_type(req, "text/html");
    
    httpd_resp_send(req, root_start, root_len);

    return ESP_OK;
}

const httpd_uri_t root = {
    .uri = "/",
    .method = HTTP_GET,
    .handler = root_get_handler,
    .user_ctx = NULL
};



esp_err_t web_get_handler(httpd_req_t *req)
{
    // const uint32_t datos_len = datos_end - datos_start;
    httpd_resp_set_type(req, "text/html");
    //ESP_LOGI(TAG, "Serve datos");
    
    buffer[0]='\0';
    
    char tempstr[20];
    
    float bat1_volts = battery_voltage_get(BATERIA1);
    float bat2_volts = battery_voltage_get(BATERIA2);
    
   
    char boton[] ="--------";
    
    
    char encabezado[] ="<!DOCTYPE html><html> <head><meta charset=\"utf-8\"><meta http-equiv=\"refresh\" content=\"1\">\n</head>\n<body>\n<h3>ESTADO DE BATERIAS</h3>";
    char bat1_label[] = "\n<p>BATERIA 1:";
    char bat2_label[] = "</p>\n<p>BATERIA 2:";
    char enc1_label[] = "</p>\n<p>ENCODER 1:";
    char enc2_label[] = "rad/s</p>\n<p>ENCODER 2:";
    char boton_label[] = "rad/s</p>\n<p>BOTON:";
    char pie[] = " </p>\n</body>\n</html>";
    
    strcat(buffer,encabezado);
    
    strcat(buffer,bat1_label);
    sprintf(tempstr," %2.3f V", bat1_volts);
    strcat(buffer,tempstr);
    
    strcat(buffer,bat2_label);
    sprintf(tempstr," %2.3f V", bat2_volts);
    strcat(buffer,tempstr);
    
    strcat(buffer,enc1_label);
    sprintf(tempstr," %.3f ",enc1_vel);
    strcat(buffer,tempstr);
    
    strcat(buffer,enc2_label);
    sprintf(tempstr," %.3f ",enc2_vel);
    strcat(buffer,tempstr);
    
    // For add buttons info
    strcat(buffer,boton_label);
    sprintf(tempstr," %s ",boton);
    strcat(buffer,tempstr);
    
    strcat(buffer,pie);
    httpd_resp_send(req, buffer, strlen(buffer));
    
    return ESP_OK;
}

const httpd_uri_t datos = {
    .uri = "/datos",
    .method = HTTP_GET,
    .handler = web_get_handler,
    .user_ctx = NULL
};

esp_err_t control_get_handler(httpd_req_t *req)
{
    const uint32_t control_len = control_end - control_start;
    

   
    size_t buf_len;
    
    buf_len = httpd_req_get_url_query_len(req) + 1;
    if (buf_len > 1) {
        char*  buf = malloc(buf_len);
        if (httpd_req_get_url_query_str(req, buf, buf_len) == ESP_OK) {
            //ESP_LOGI(TAG, "Found URL query => %s", buf);
            char param[32];
            /* Get value of expected key from query string */
            if (httpd_query_key_value(buf, "comando", param, sizeof(param)) == ESP_OK) {
                ESP_LOGI(TAG, "Se recibio comando = %s", param);
                exec_command(param);
            }

        }
        free(buf);
    }
    //ESP_LOGI(TAG, "=====>COMANDO: %s\n",buf);
           
    httpd_resp_set_type(req, "text/html");
    httpd_resp_send(req, control_start, control_len);

    return ESP_OK;
}


/**
* @brief    Check the received command and execute the order
*
* @param   	- param : pointer to the received string
*
* @return  
*          - void
*/
void exec_command(char * param){
        
        if(strcmp(param,"LED1")==0){
                ESP_LOGI(TAG, "======== LED1 ============");
                led_toggle(LED1);
        
        }
        if(strcmp(param,"LED2")==0){
                ESP_LOGI(TAG, "======== LED2 ============");
                led_toggle(LED2);
        
        }
        if(strcmp(param,"LED3")==0){
                ESP_LOGI(TAG, "======== LED3 ============");
                led_toggle(LED3);
        
        }
        if(strcmp(param,"LED4")==0){
                ESP_LOGI(TAG, "======== LED4 ============");
                led_toggle(LED4);
        
        }
        if(strcmp(param,"IZQ")==0){
                ESP_LOGI(TAG, "======== IZQUIERDA =======");
                pwm_motor_rotate_left();
        }
        if(strcmp(param,"DER")==0){
                ESP_LOGI(TAG, "======== DERECHA =========");
                pwm_motor_rotate_right();
        }
        if(strcmp(param,"ADELANTE")==0){
                ESP_LOGI(TAG, "======== ADELANTE ========");
                pwm_motor_move_forward();
        }
        if(strcmp(param,"ATRAS")==0){
                ESP_LOGI(TAG, "======== ATRAS ===========");
                pwm_motor_move_back();
        }
        if(strcmp(param,"PARAR")==0){
                ESP_LOGI(TAG, "======== PARAR ===========");
                pwm_motor_stop();
        }
        

}

// associate control web frame with get handler
const httpd_uri_t control = {
    .uri = "/control",
    .method = HTTP_GET,
    .handler = control_get_handler,
    .user_ctx = NULL
};


// HTTP Error (404) Handler - Redirects all requests to the root page
esp_err_t http_404_error_handler(httpd_req_t *req, httpd_err_code_t err)
{
    // Set status
    httpd_resp_set_status(req, "302 Temporary Redirect");
    // Redirect to the "/" root directory
    httpd_resp_set_hdr(req, "Location", "/");
    // iOS requires content in the response to detect a captive portal, simply redirecting is not sufficient.
    httpd_resp_send(req, "Redirect to the captive portal", HTTPD_RESP_USE_STRLEN);

    // ESP_LOGI(TAG, "Redirecting to root");
    return ESP_OK;
}



httpd_handle_t start_webserver(void)
{
    httpd_handle_t server = NULL;
    httpd_config_t config = HTTPD_DEFAULT_CONFIG();
    config.max_open_sockets = 13;
    config.lru_purge_enable = true;
    // config.stack_size = 1024;
    

    // Start the httpd server
    ESP_LOGI(TAG, "Starting server on port: '%d'", config.server_port);
    if (httpd_start(&server, &config) == ESP_OK) {
        // Set URI handlers
        ESP_LOGI(TAG, "Registering URI handlers");
        httpd_register_uri_handler(server, &root); // 192.168.4.1/root.html
        httpd_register_uri_handler(server, &datos); // 192.168.4.1/datos.html
        httpd_register_uri_handler(server, &control); // 192.168.4.1/control.html
        // httpd_register_err_handler(server, HTTPD_404_NOT_FOUND, http_404_error_handler);
        
    }
    return server;
}


