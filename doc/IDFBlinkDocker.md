# Ejemplo `blink` con ESP-IDF y Docker

El framework de desarrollo oficial de Espressif se llama [ESP-IDF](https://docs.espressif.com/projects/esp-idf/en/latest/esp32/) (IoT Development Framework).
Para utilizar este framework es necesario instalar las siguientes herramientas:
1. El toolchain para compilar el código fuente del ESP32.
1. Las herramientas de construcción (como CMake y Ninja) para crear aplicaciones con el ESP32.
1. El propio ESP-IDF que contiene la API (bibliotecas de software y código fuente) para el ESP32 junto a varios scripts para operar con el toolchain.

Espressif brinda una [imagen Docker](https://docs.espressif.com/projects/esp-idf/en/latest/esp32/api-guides/tools/idf-docker-image.html) con el IDF listo para usar.
A continuación se muestran los pasos para instalar ESP-IDF usando Docker.

## Instalación de imagen Docker

La imagen se puede buscar con el siguiente comando:
```
> docker search espressif/idf
NAME                          DESCRIPTION                                     STARS     OFFICIAL   AUTOMATED
espressif/idf                 https://docs.espressif.com/projects/esp-idf/…   43                   
espressif/idf-rust-examples   Examples of rust on esp32                       2                    
espressif/idf-rust            ESP-IDF image with Rust support for Xtensa b…   7
```

Luego, la instalación de la imagen se realiza con:
```
> docker pull espressif/idf
```

La imágen instalada es:
```
 > docker images
espressif/idf                 latest             c82768a177c2   14 hours ago    4.16GB
```

El contenedor se puede ejecutar con el siguiente comando:
```
> docker run --rm -v $PWD:/project -w /project -it espressif/idf
```

El ESP-IDF incluye la herramienta de línea de comandos [`idf.py`](https://docs.espressif.com/projects/esp-idf/en/latest/esp32/api-guides/tools/idf-py.html) que sirve de front-end para administrar y construir los proyectos de forma simple. 
Se puede ver la instalada con:
```
> idf.py  --version

ESP-IDF v5.1-dev-3710-gacac972f70
```

## Ejemplo `blink`

Para la construcción y grabación del ejemplo `blink` primero ejecutar el contendor:
```
> docker run --rm --device=/dev/ttyUSB0:/dev/ttyUSB0 -it espressif/idf
```

El ejemplo `blink` se encuentra en `/opt/esp/idf/examples/get-started/blink/`.

Ir al directorio del ejemplo y seguir los siguientes pasos (basados en [enlace](https://github.com/espressif/esp-idf/tree/master/examples/get-started/blink)):
  1. Ingresar a la configuración del proyecto con `idf.py menuconfig`
  1. Ir a `Example Configuration`
  1. Modificar el GPIO del LED (en el controlador diferencial el `LED1` se encuentra en el `GPIO33`)
  1. Salir y guardar los cambios
  1. Construir con `idf.py build`
  1. Grabar con `idf.py -p /dev/ttyUSB0 flash`

El `LED1` de la placa comienza a parpadear cada 1 seg.
