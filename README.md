# ⚾ Los Angeles Dodgers
## Proyecto de Data Engineering & Business Intelligence
### Estadísticas Ofensivas — Temporada 2023

**Habith Jose De Leon Diaz | Analista de Datos**

---

# 1. Descripción General

Este proyecto implementa un pipeline de datos de extremo a extremo para el análisis de las estadísticas ofensivas de los Los Angeles Dodgers durante la temporada 2023. Como analista de datos de la organización, el objetivo es transformar datos crudos de bateo en información accionable que permita a la dirección técnica tomar decisiones estratégicas sobre la composición del lineup, la gestión del roster y la eficiencia salarial.

El proyecto abarca el ciclo de vida completo del dato: desde la extracción y transformación hasta el almacenamiento en PostgreSQL y la visualización en un dashboard interactivo de Power BI.

# 2. Preguntas de Negocio

El dashboard responde las siguientes preguntas estratégicas:

## 2.1 Preguntas Administrativas

### Eficiencia Salarial vs Rendimiento Ofensivo

¿Qué proporción del presupuesto salarial está invertida en jugadores con bajo rendimiento ofensivo (OPS < 0.75 y más de 200 turnos al bate)? El objetivo es mantener este indicador por debajo del 20%.

### Distribución Salarial por Tipo de Contrato

¿Cómo se distribuye la masa salarial entre los diferentes tipos de contrato: Rookie, Mid, Arbitration, Star y Superstar? Esto permite evaluar el equilibrio entre inversión y potencial de los jugadores.

## 2.2 Preguntas Técnicas / Analíticas

### Jugadores que más impulsan carreras

¿Cuáles son los jugadores con mayor RBI por turno al bate (RBI/AB)? Esta métrica permite identificar a los jugadores más eficientes impulsando carreras e informar la posición óptima en el orden al bate, especialmente el 3er turno.

### OPS Promedio por Nacionalidad

¿De qué nacionalidad provienen los bateadores con mejor OPS promedio? Esto permite a la organización orientar sus estrategias de scouting hacia las regiones con mayor talento ofensivo.

### Frecuencia de Home Runs por Turno al Bate

¿Qué jugadores conectan home runs con mayor frecuencia relativa a sus turnos al bate (HR/AB)? Identifica a los posibles candidatos al 4to turno al bate, especialmente valiosos en situaciones de bases llenas.

### Robos Efectivos vs No Efectivos

¿Qué jugadores roban más bases con mayor tasa de éxito? Esta métrica permite identificar corredores emergentes confiables que pueden usarse estratégicamente en momentos clave del partido.

# 3. Fuente de Datos

El dataset proviene de Kaggle y contiene estadísticas ofensivas de béisbol de Grandes Ligas. Las principales métricas incluidas son:

- **At Bats (AB)** — Turnos oficiales al bate
- **Home Runs (HR)** — Cuadrangulares
- **Runs Batted In (RBI)** — Carreras impulsadas
- **Stolen Bases (SB)** — Bases robadas
- **Caught Stealing (CS)** — Veces atrapado robando
- **OPS (On-base Plus Slugging)** — Métrica compuesta de rendimiento ofensivo
- **Hits, Dobles, Triples, Sencillos** — Tipos de hit
- **Plate Appearances (PA)** — Apariciones en el plato
- **Walks (BB) y Strikeouts (K)** — Bases por bolas y ponches
- **Nationality** — Nacionalidad del jugador

# 4. Arquitectura del Pipeline (ETL)

El proyecto sigue una arquitectura ETL clásica:

**Kaggle Dataset → Extract → Python + Pandas → Transform → Validate → Load → PostgreSQL → Power BI → Dashboard Interactivo**

## 4.1 Extract

El dataset crudo es cargado en Python usando Pandas mediante `pd.read_csv()`. En esta fase se realiza una inspección inicial del esquema, tipos de datos y valores nulos.

## 4.2 Transform

- Eliminación de registros duplicados
- Tratamiento de valores nulos
- Corrección de tipos de datos
- Estandarización de nombres de columnas (`snake_case`)
- Creación de variables derivadas (OPS, HR/AB, RBI/AB, SB_Neto)
- Clasificación de jugadores por tipo de contrato (Rookie, Mid, Arbitration, Star, Superstar)
- Validaciones de calidad de datos

## 4.3 Validate

- Verificación de valores nulos por columna
- Detección de registros duplicados
- Validación de rangos válidos (ej. OPS entre 0 y 2)
- Verificación de tipos de datos
- Conteo de registros pre y post transformación

## 4.4 Load

Los datos transformados y validados son cargados en PostgreSQL mediante SQLAlchemy. PostgreSQL actúa como la capa de persistencia que consume Power BI para la visualización.

# 5. Modelo de Datos (Esquema Estrella)

El modelo sigue un esquema estrella con las siguientes tablas:

- `fact_batting` — Tabla de hechos con métricas ofensivas por jugador y temporada
- `fact_contrato` — Tabla de hechos con información salarial y tipo de contrato
- `dim_player` — Dimensión de jugadores (nombre, nacionalidad, posición)
- `dim_temporada` — Dimensión de tiempo (año, temporada)

# 6. KPIs Definidos

Se definieron tres KPIs principales para medir el rendimiento ofensivo de los jugadores:

### KPI 1 — Eficiencia en Carreras Impulsadas (RBI/AB)

Mide qué tan seguido un jugador impulsa una carrera por turno oficial al bate. Un ratio de 0.15 significa que cada 100 turnos al bate el jugador impulsa 15 carreras.

**Objetivo:** RBI/AB ≥ 0.15

### KPI 2 — Frecuencia de Home Runs (HR/AB)

Mide con qué frecuencia un jugador conecta un home run por turno al bate. Un ratio de 0.05 significa que de cada 100 turnos conecta 5 home runs.

**Objetivo:** HR/AB ≥ 0.05 para candidatos al 4to turno.

### KPI 3 — Eficiencia en Bases Robadas (SB Success Rate)

Mide el porcentaje de intentos de robo exitosos:

**SB Success Rate = SB / (SB + CS)**

Un 70% significa que de cada 10 intentos logra 7. Por debajo de este umbral el jugador genera más outs que bases.

**Objetivo:** SB Rate ≥ 70%

# 7. OKRs (Objectives & Key Results)

## OKR 1 — Maximizar la eficiencia en carreras impulsadas

**Objetivo:** Posicionar los jugadores más eficientes impulsando carreras en los turnos clave del lineup.

**KPI relacionado:** KPI 1 — RBI/AB

- **KR1:** Al menos 3 jugadores con RBI/AB mayor a 0.15 en el roster activo.
- **KR2:** El jugador del 3er turno debe tener un RBI/AB mínimo de 0.18.
- **KR3:** El promedio de RBI/AB del lineup debe superar 0.12 en la temporada.

## OKR 2 — Identificar y posicionar jugadores de potencia

**Objetivo:** Garantizar poder ofensivo en el 4to turno al bate para situaciones de bases llenas.

**KPI relacionado:** KPI 2 — HR/AB

- **KR1:** El jugador del 4to turno debe mantener un HR/AB mayor a 0.05.
- **KR2:** Al menos 2 jugadores del roster con HR/AB mayor a 0.04.
- **KR3:** El candidato al 4to turno debe sostener ese ratio durante al menos 200 turnos al bate.

## OKR 3 — Optimizar el uso de corredores en partidos clave

**Objetivo:** Maximizar las bases robadas minimizando los outs generados por robos fallidos.

**KPI relacionado:** KPI 3 — SB Success Rate

- **KR1:** Los corredores designados deben tener tasa de éxito mayor al 70%.
- **KR2:** El SB Neto del equipo (SB - CS) debe ser positivo al cierre de la temporada.
- **KR3:** Ningún corredor con tasa menor al 60% debe intentar robos en situaciones críticas.

# 8. Dashboard de Power BI

El dashboard interactivo está diseñado para responder las preguntas de negocio mediante las siguientes visualizaciones:

### Barras horizontales agrupadas

**RBI/AB por jugador** — Ranking de eficiencia en carreras impulsadas.

### Columnas verticales agrupadas

**HR/AB por jugador** — Frecuencia de home runs por turno al bate.

### Barras apiladas al 100%

**Robos efectivos vs no efectivos** — Eficiencia de corredores.

### Treemap

**OPS promedio por nacionalidad** — Origen del talento ofensivo.

### Gráfico de barras

**Distribución salarial por tipo de contrato**

### Tarjeta KPI nativa

KPIs de RBI/AB, HR/AB y SB Success Rate vs objetivos definidos.

**Filtros globales aplicados:** Temporada 2023 | Plate Appearances ≥ 100

# 9. Tecnologías Utilizadas

- **Python 3.10+** — Lenguaje principal del pipeline ETL
- **Pandas** — Manipulación y transformación de datos
- **SQLAlchemy** — Conexión y carga a base de datos
- **PostgreSQL** — Persistencia de datos en esquema estrella
- **Power BI Desktop** — Visualización e inteligencia de negocio
- **DAX** — Lenguaje de medidas y KPIs en Power BI
- **Jupyter Notebook** — Desarrollo y validación del ETL
- **Git / GitHub** — Control de versiones

# 10. Estructura del Proyecto

```text
baseball-data-project/
├── data/
│   └── raw/
│       └── batting_dataset.csv
├── notebooks/
│   └── etl_batting.ipynb
├── scripts/
│   └── etl.py
├── sql/
│   └── create_tables.sql
├── docs/
│   ├── pipeline_diagram.pdf
│   └── conclusions.pdf
├── powerbi/
│   └── baseball_dashboard.pbix
└── README.md
```

# 11. Cómo Ejecutar el Proyecto

## 1. Clonar el repositorio

```bash
git clone https://github.com/usuario/baseball-data-project.git
```

## 2. Instalar dependencias

```bash
pip install pandas sqlalchemy psycopg2-binary jupyter
```

## 3. Configurar conexión a PostgreSQL

Editar las credenciales en `scripts/etl.py` con tu host, usuario y contraseña.

## 4. Ejecutar el ETL

```bash
python scripts/etl.py
```

O abrir el notebook:

```text
notebooks/etl_batting.ipynb
```

en Jupyter.

## 5. Conectar Power BI

Abrir `powerbi/baseball_dashboard.pbix` y actualizar la conexión a tu instancia de PostgreSQL.

# 12. Autor

**Habith Jose De Leon Diaz**

*Data Engineering & Business Intelligence*

**Riwi — Academia de Desarrollo de Software | Barranquilla, Colombia**
