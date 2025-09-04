# 🏥 Hospital Database Management System  

## 📌 Overview  
This project implements a **Hospital Database** to manage patients, doctors, appointments, admissions, billing, and prescriptions.  
It includes **database design, SQL queries, triggers, views, and stored procedures** to demonstrate real-world hospital operations.  

---

## 🗂️ Features  
- 👨‍⚕️ **Doctors & Departments** – Track doctors and the departments they belong to.  
- 🧑‍🤝‍🧑 **Patients** – Manage patient details, admissions, and appointments.  
- 📅 **Appointments** – Schedule and manage doctor-patient appointments.  
- 💊 **Prescriptions** – Link prescriptions to patient appointments.  
- 🏨 **Admissions & Rooms** – Assign rooms to admitted patients.  
- 💳 **Billing** – Generate and track billing records with payment status.  
- ⚡ **Triggers & Procedures** – Automate room availability and billing generation.  
- 👀 **Views & Reports** – Predefined reports such as doctor schedules and unpaid bills.  

---

## 📐 ERD (Entity-Relationship Diagram)  
The hospital database ERD includes **1–1, 1–M, M–1, and M–M relationships**:  

- **1–1:** Admissions ↔ Rooms  
- **1–M:** Departments → Doctors, Patients → Admissions, Patients → Billing  
- **M–1:** Many appointments belong to one doctor/patient  
- **M–M:** Patients ↔ Doctors (via Appointments), Doctors ↔ Prescriptions (via Appointments)  

 
 <img width="1536" height="1024" alt="hospital db ERD" src="https://github.com/user-attachments/assets/adc40a7e-3b73-4fef-8246-53aea0c3cb05" />

 

---

## 🛠️ Database Schema  

### Main Tables  
- **Departments**  
- **Doctors**  
- **Patients**  
- **Appointments**  
- **Prescriptions**  
- **Rooms**  
- **Admissions**  
- **Billing**  

---

## ⚡ SQL Features Implemented  

### Queries  
- List appointments for a patient  
- Find admissions within a date range  
- Get doctor schedules  
- Calculate total revenue  
- Find unpaid bills  

### View  
- **Doctor_Schedule** → shows today’s appointments  

### Trigger  
- **trg_room_unavailable** → marks a room unavailable after patient admission  

### Stored Procedure  
- **create_bill(patient_id, amount)** → auto-generates patient bills  

---

## ▶️ How to Run  

Clone this repository 
Import create.sql into MySQL 
Import insert.sql 
Run queries from select.sql
