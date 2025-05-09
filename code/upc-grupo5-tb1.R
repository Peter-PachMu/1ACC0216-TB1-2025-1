rm(list=ls(all=TRUE))
graphics.off()
cat("\014")

# Librerias Utilizadas en el proyecto

library(ggplot2)     # para visualización de datos
library(cowplot)     # para mejorar temas y combinar gráficos
library(VIM)         # muestra la tabla de valores faltantes
library(mlr)         # para imputar valores (como la moda)
library(dplyr)       # para manipulación de datos
library(lubridate)   # para manejo de fechas


# -----   CARGA DE DATOS.   -----

setwd("~/Desktop/1ACC0216-TB1-2025-1/data") #Directorio
df <- read.csv("hotel_bookings.csv", header=TRUE, stringsAsFactors = FALSE)

# ----- INSPECCION DE DATOS -----

head(df) #Encabezado del df

dim(df) #Dimension del df

names(df) # Nombre de las variables

summary(df) # Resumen estadistico

str(df) #Estructura de los datos

#Cambio de los tipos de datos
# Lista de columnas categóricas
categorical_cols <- c(
  "hotel", "meal", "country", "market_segment",
  "distribution_channel", "is_repeated_guest", "reserved_room_type", "assigned_room_type",
  "deposit_type", "agent", "company", "customer_type", "reservation_status"
)

# Convertir cada columna a factor
df[categorical_cols] <- lapply(df[categorical_cols], as.factor)
# Convetir a Date
df$reservation_status_date <- as.Date(df$reservation_status_date)

sapply(df,class) # Verificamos los cambios del tipo en la variables

str(df) # Verificamos la nueva estructura de los datos

## Eliminamos los duplicados

table(duplicated(df)) # Nos mostrara la cantidad de datos duplicados en TRUE

df<- unique(df) # Eliminamos duplicados

table(duplicated(df)) #Verificamos nuevamente los valores duplicados 
#Nota: Observamos que no muestra valores para TRUE, lo cual indica que ya no tenemos duplicados

# ----- PRE PROCESAR DATOS -----

#- Resumen
summary(df)
#- Identificacion de datos faltantes
#Verificamos los valores nulos por columnas
colSums(is.na(df)) 
#Observamos el contenido para un mayor analisis
View(df)

#Observacion obtenidas de summary(df) y View:
#Si bien con la funcion colSums(is.na(df)) solo muestra valores faltantes en children, 
#podemos verificar que los datos con NULL no fueron considerados como vacios o Na, por lo tanto
#Se tienen los siguientes resultados:

#4 valores Na en "children" | 0.005%
#12193 valores NULL en 'agent' | 13.95%
#82137 valores NULL en 'company' | 94.7%
#452 valores NULL en 'country' -> Dato obtenido de la table(df$country) | 0.52%

#Convertimos los valores NULL a vacios para un mejor manejo de los datos
df[] <- lapply(df, function(x) {
  if (is.character(x) || is.factor(x)) {
    x[x == "NULL"] <- NA
  }
  return(x)
})

#Verificamos nuevamente los valores nulos por columnas
colSums(is.na(df)) 

#Grafico de valores faltantes

aggr(df,numbers = T, sortVar=T)

#- Tratamiento de datos faltantes

# children
# Datos faltantes se impunaran con el valor entero de mean observado con summary(df)

df$children[is.na(df$children)] <- round(mean(df$children, na.rm = TRUE))

# Country

# Imputamos con la moda 
imputacion <- impute(df, 
                     cols = list(country = imputeMode()))

df <- imputacion$data

# Agent
# para el caso de Agent los valores Na lo cambiaremos por no No Agent
# despues de analizar esta columna categorica que es Id del agente externo que hizo la reserva
# podemos calificar el valor NULL como 'No Agent' al realizar sin agente la reserva 
# de tal manera que evitamos realizar un distorsion de la distrubucion de los resultados al aplicar la moda 
levels(df$agent) <- c(levels(df$agent), "No Agent")
df$agent[is.na(df$agent)] <- "No Agent"

# Company
# Para el caso de la columna Company se opto por eliminar la columna ya que
# el valor NULL representa el aprox 95% de todos los datos, ademas de que no utilizaremos
# esta variable para el analisis

df$company <- NULL

# Verificamos los valores nulos nuevamente
colSums(is.na(df)) 





