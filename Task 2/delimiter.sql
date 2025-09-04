DELIMITER $$

CREATE TRIGGER trg_room_unavailable
AFTER INSERT ON Admissions
FOR EACH ROW
BEGIN
   UPDATE Rooms
   SET availability = FALSE
   WHERE room_id = NEW.room_id;
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE create_bill(IN p_patient_id INT, IN p_amount DECIMAL(10,2))
BEGIN
   INSERT INTO Billing (patient_id, amount, payment_status, payment_date)
   VALUES (p_patient_id, p_amount, 'Pending', CURDATE());
END$$

DELIMITER ;

-- ✅ Call procedure like this:
CALL create_bill(1, 750.00);
