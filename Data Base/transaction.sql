USE `phonestore_db`;

START TRANSACTION;
SAVEPOINT ur;
INSERT INTO users VALUE
(15, 'Safokhon', 'Asiri', 19, 'Male', '+992551115750', 'asirisafokhon@gmail.com', 5),
(16, 'John', 'Doe', 25, 'Male', '+155887415263', 'johndoe@gmail.com', 5),
(17, 'Jessica', 'Leo', 19, 'Female', '+123654789', 'jessicaleo@gmail.com', 5),
(18, 'Sheroz', 'Nazirov', 18, 'Male', '+992001668222', 'sheroznazirov@gmail.com', 5);

UPDATE `users` SET Firstname = 'Bahrullo' WHERE id = 15;

DELETE FROM users WHERE Firstname = 'Vali';

SELECT * FROM users;

COMMIT;
ROLLBACK;