INSERT INTO Departments (department_name) VALUES
('Cardiology'), ('Neurology'), ('Orthopedics'), ('Pediatrics');

INSERT INTO Doctors (name, specialization, phone, department_id) VALUES
('Dr. John Smith','Cardiologist','1234567890',1),
('Dr. Sarah Lee','Neurologist','9876543210',2),
('Dr. Alex Brown','Orthopedic','5551234567',3),
('Dr. Emma Davis','Pediatrician','4449876543',4);

INSERT INTO Patients (name, dob, gender, phone, address, insurance_id) VALUES
('Alice Johnson','1990-05-12','F','1112223333','New York','INS123'),
('Bob Williams','1985-09-23','M','2223334444','Chicago','INS456'),
('Charlie Green','2002-01-15','M','3334445555','Los Angeles','INS789');

INSERT INTO Appointments (patient_id, doctor_id, appointment_date, status) VALUES
(1,1,'2025-09-05 10:00:00','Scheduled'),
(2,2,'2025-09-06 14:30:00','Completed'),
(3,4,'2025-09-07 09:15:00','Scheduled');

INSERT INTO Prescriptions (appointment_id, medicine, dosage, duration) VALUES
(2,'Aspirin','100mg','5 days'),
(2,'Paracetamol','500mg','3 days');

INSERT INTO Rooms (type, availability) VALUES
('ICU', TRUE), ('Ward', TRUE), ('Private', TRUE);

INSERT INTO Admissions (patient_id, room_id, admit_date, discharge_date) VALUES
(1,1,'2025-09-01',NULL);

INSERT INTO Billing (patient_id, amount, payment_status, payment_date) VALUES
(1,500.00,'Pending',NULL),
(2,1200.00,'Paid','2025-09-02');
