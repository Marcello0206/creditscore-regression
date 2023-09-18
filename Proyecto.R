# Trabajo Final de Análisis de Regresión

# Paquetes

library(readr)
library(tidyverse)

# Lectura de datos

rm(list = ls())
datos <- readr::read_csv('credit_data.csv'); datos
colSums(is.na(datos))
names(datos) <- c('edad','genero','ingresos','puntuacion_crediticia',
                  'tiempo_puntuacion_crediticia','numero_de_prestamos',
                  'monto_prestamo','duracion_prestamo','cliente_existente',
                  'estado','ciudad','ltv','perfil_laboral','puntacion_final',
                  'ocupacion'
                  )

data1 <- datos %>% select(-cliente_existente,-perfil_laboral,-ocupacion,
                          -estado,-ciudad)
data1
