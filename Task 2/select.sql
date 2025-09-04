SELECT a.appointment_id, p.name AS patient, d.name AS doctor, a.appointment_date
FROM Appointments a
JOIN Patients p ON a.patient_id = p.patient_id
JOIN Doctors d ON a.doctor_id = d.doctor_id
WHERE DATE(a.appointment_date) = CURRENT_DATE;

SELECT dep.department_name, COUNT(a.appointment_id) AS total_patients
FROM Appointments a
JOIN Doctors d ON a.doctor_id = d.doctor_id
JOIN Departments dep ON d.department_id = dep.department_id
GROUP BY dep.department_name;

SELECT p.name, r.type AS room_type, ad.admit_date
FROM Admissions ad
JOIN Patients p ON ad.patient_id = p.patient_id
JOIN Rooms r ON ad.room_id = r.room_id
WHERE ad.discharge_date IS NULL;


SELECT d.name, COUNT(a.appointment_id) AS total_appointments
FROM Doctors d
JOIN Appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.name
ORDER BY total_appointments DESC
LIMIT 3;

SELECT DATE_FORMAT(payment_date, '%Y-%m-01') AS month, SUM(amount) AS revenue
FROM Billing
WHERE payment_status = 'Paid'
GROUP BY month
ORDER BY month DESC;


SELECT p.name, b.amount, b.payment_status
FROM Billing b
JOIN Patients p ON b.patient_id = p.patient_id
WHERE b.payment_status = 'Pending';
