CREATE TABLE Departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

CREATE TABLE Doctors (
    doctor_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    phone VARCHAR(15),
    department_id INT REFERENCES Departments(department_id)
);

CREATE TABLE Patients (
    patient_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    dob DATE,
    gender CHAR(1),
    phone VARCHAR(15),
    address TEXT,
    insurance_id VARCHAR(50)
);

CREATE TABLE Appointments (
    appointment_id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES Patients(patient_id),
    doctor_id INT REFERENCES Doctors(doctor_id),
    appointment_date TIMESTAMP,
    status VARCHAR(20) CHECK (status IN ('Scheduled','Completed','Cancelled'))
);

CREATE TABLE Prescriptions (
    prescription_id SERIAL PRIMARY KEY,
    appointment_id INT REFERENCES Appointments(appointment_id),
    medicine VARCHAR(100),
    dosage VARCHAR(50),
    duration VARCHAR(50)
);

CREATE TABLE Rooms (
    room_id SERIAL PRIMARY KEY,
    type VARCHAR(50),
    availability BOOLEAN DEFAULT TRUE
);

CREATE TABLE Admissions (
    admission_id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES Patients(patient_id),
    room_id INT REFERENCES Rooms(room_id),
    admit_date DATE,
    discharge_date DATE
);

CREATE TABLE Billing (
    bill_id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES Patients(patient_id),
    amount DECIMAL(10,2),
    payment_status VARCHAR(20) CHECK (payment_status IN ('Paid','Pending')),
    payment_date DATE
);

