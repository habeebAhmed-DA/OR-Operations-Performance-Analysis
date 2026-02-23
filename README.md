# OR-Operations-Performance-Analysis
<br>

## 🏥 Operating Room Performance & Utilization Analysis
### 📄 Project Overview 

This project analyzes Operating Room performance, surgical workload distribution, scheduling accuracy, and time efficiency using Power BI. The objective is to identify delays, procedure overruns, service-level workload patterns, and utilization trends to support data-driven operational decisions in a hospital setting.

This end-to-end analytics project evaluates hospital Operating Room performance through:
- Surgical volume analysis by service and OR suite
- Scheduling workload assessment
- Start time delay analysis
- Case duration and overrun evaluation
- Morning vs. afternoon performance comparison
- Identification of the longest surgical procedures
<br>

### 📂 DataSet Overview
The dataset was sourced from Kaggle and contains simulated hospital operating room utilization data. It includes detailed records of surgical cases, scheduling information, service categories, and key timing metrics used to evaluate OR performance.

Link of the DataSet : https://www.kaggle.com/datasets/drjfalk/operating-room-utilization

### 📊 DataSet Description

1. **Encounter ID** (integer): Unique identifier for each surgical procedure 🔑
2. **Date** (date): Date the surgical procedure was performed on 🔑
3. **Month** (month): Month the most surgeries was performed
4. **OR Suite** (integer): The operating room (OR) suite number the procedure was performed in 🔑
5. **Service** (string): The surgical specialty (or department) that performed the procedure 🔑
6. **CPT Code** (integer): The current procedural terminology (CPT) code assigned to the surgical procedure, established by the AMA
7. **CPT Description** (string): A brief description of the surgical procedure that is associated with the CPT code
8. **Booked Time** (integer): The amount of time (in minutes) that the procedure is scheduled for 🔑
9. **OR Schedule** (datetime): The date and time the surgical procedure is scheduled to start
10. **Wheels In** (datetime): The date and time the patient enters the OR suite 🔑
11. **Start Time** (datetime): The date and time the surgical procedure begins (aka cut or incision time) 🔑
12. **End Time** (datetime): The date and time the surgical procedure is completed (aka close time)
13. **Wheels Out** (datetime): The date and time the patient is wheeled out of the OR suite

### 🎯 Project Objective 
- Evaluate surgical volume distribution across services and OR suites
- Measure average start delays and scheduling adherence
- Analyze case duration overruns against booked time
- Identify peak workload concentration
- Compare morning and afternoon case performance
- Detect high-duration surgical outliers

### Tools used

***📊 MS Excel*** = Data Cleaning

***📈 Power BI*** = (Data visualization & dashboard development)

***📉 DAX*** = (Calculated measures & KPIs)

***🗄 MySQL*** = (Data preprocessing & transformation)

***📤 Kaggle*** = Dataset (Data source)

### Key Insights 
- **Plastic Surgery** and **General Surgery** record the **highest average** scheduled case durations.
- **OR Suite 6** shows **higher average time overruns** than other suites.
- **Afternoon** cases experience slightly **higher average start delays** compared to **morning cases**.
- **Surgical workload** is **unevenly distributed** across services.
<br>

 
## 📷 Dashboard Preview

  

