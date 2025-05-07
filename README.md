<div style="width: 100%; display: flex; align-items: flex-start; justify-content: space-between;">
  <div style="width: 50%;">
    <img src="https://static.wikia.nocookie.net/logopedia/images/2/2d/UPC-Logo-Actual.png/revision/latest?cb=20230305155749&path-prefix=es" style="width: 300px; height: auto;">
  </div>
  <div style="width: 50%; text-align: left;">
    <p style="margin: 0; padding-top: 22px;">1ACC0216-2510-256 - Fundamentos de Data Science · TB1</p>
    <p style="margin: 0;">2025 · Ciencia de la Computación</p>
    <p style="margin: 0;">Profesora: <b>Nérida Isabel Manrique Tunque</b></p>
    <p style="margin: 0;"><b>Alumnos:</b></p>
    <p style="margin: 0;"><b>Carlin Mendoza, Selinne Sandra</b> - <a href="mailto:U20251d325@upc.edu.pe">U20251d325@upc.edu.pe</a></p>
    <p style="margin: 0;"><b>Pacherres Muñoz, Peter Smith</b> - <a href="mailto:U202423854@upc.edu.pe">U202423854@upc.edu.pe</a></p>
    <p style="margin: 0;"><b>Timana Mendoza, Sebastian</b> - <a href="mailto:U202218729@upc.edu.pe">U202218729@upc.edu.pe</a></p>
  </div>
</div>

---

# Análisis Exploratorio de Datos (EDA): *Hotel Booking Demand*

## Índice

1. [Objetivo del proyecto](#objetivo-del-proyecto)  
2. [Descripción del dataset](#descripción-del-dataset)  
   - 2.1 [Variables categóricas](#variables-categóricas)  
   - 2.2 [Variables numéricas](#variables-numéricas)  
   - 2.3 [Variables de fecha](#variables-de-fecha)  
3. [Conclusiones clave](#conclusiones-clave)  
4. [Licencia](#licencia)

---

## 1. Objetivo del proyecto <a name="objetivo-del-proyecto"></a>

El propósito de este proyecto es realizar un análisis exploratorio de datos (EDA) sobre un conjunto de datos que contiene información de reservas realizadas en hoteles urbanos y resorts. A través de este análisis, buscamos descubrir patrones subyacentes, identificar tendencias significativas y revelar posibles correlaciones entre las diversas variables presentes en el dataset. 

---

## 2. Descripción del dataset <a name="descripción-del-dataset"></a>

El conjunto de datos contiene registros detallados sobre reservas, incluyendo información del cliente, tipo de habitación, fechas de llegada, duración de la estancia y otros aspectos relevantes de la transacción. Cada entrada representa una reserva específica y abarca una amplia gama de atributos relevantes para comprender los factores que influyen en la demanda hotelera.

### 2.1 Variables categóricas <a name="variables-categóricas"></a>

Estas variables representan atributos cualitativos, codificados como categorías:

- **Información general del hotel y la llegada:**  
  `hotel`, `arrival_date_year`, `arrival_date_month`

- **Datos de origen y canal de la reserva:**  
  `meal`, `country`, `market_segment`, `distribution_channel`

- **Características del cliente y la reserva:**  
  `is_repeated_guest`, `reserved_room_type`, `assigned_room_type`

- **Método de pago y estado de la reserva:**  
  `deposit_type`, `agent`, `company`, `customer_type`, `reservation_status`

### 2.2 Variables numéricas <a name="variables-numéricas"></a>

Estas variables representan medidas cuantitativas relacionadas con la duración de la estancia, la composición de los huéspedes y otros aspectos numéricos de la reserva:

- **Fechas y duración de la estancia:**  
  `lead_time`, `arrival_date_week_number`, `arrival_date_day_of_month`  
  `stays_in_weekend_nights`, `stays_in_week_nights`

- **Composición del grupo:**  
  `adults`, `children`, `babies`

- **Historial y cambios de reserva:**  
  `previous_cancellations`, `previous_bookings_not_canceled`, `booking_changes`, `days_in_waiting_list`

- **Ingresos y solicitudes adicionales:**  
  `adr`, `required_car_parking_spaces`, `total_of_special_requests`

### 2.3 Variables de fecha <a name="variables-de-fecha"></a>

Incluyen información temporal que permite el análisis de tendencias y estacionalidades:

- `reservation_status_date`

---

## 3. Conclusiones clave <a name="conclusiones-clave"></a>

A partir del análisis exploratorio, se destacan los siguientes hallazgos:

- E  
- D  
- C  
- B 
- A

---

## 4. Licencia <a name="licencia"></a>

Este proyecto se encuentra bajo la Licencia MIT. Para más información, consulta el archivo [LICENSE](LICENSE).


