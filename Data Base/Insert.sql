USE `phonestore_db`;

INSERT INTO `status` (id, title) VALUE (5, 'Client');

INSERT INTO `storage` (id, Size) VALUE (5, 1024);

INSERT INTO `system` (id, Os) VALUE (2, 'iOS');

INSERT INTO `payments` (id, Method) VALUE (2, 'Non-Cash');

INSERT INTO `buying` (`id`, `Method`) VALUE (2, 'Non-Credit');

INSERT INTO `colors` (`id`, `Color`) VALUE (10, 'Red');

INSERT INTO `states` (id, State) VALUE (2, 'Used');

INSERT INTO `phones` (`id`, `Model`, `Marka`, `Storage_id`, `Color_id`, `State_id`, `Price`) VALUE (11, 'Huawei', 'Honor 400 Lite', 3, 3, 1, 3400.00);

INSERT INTO `specifications` (`id`, `Phone_id`, `Display`, `RAM`, `Battery`, `Camera`) VALUE (11, 11, 'OLED', 16, 6000, 48);

INSERT INTO `stock` (`id`, `Product_id`, `Amount`) VALUE (11, 11, 60);

INSERT INTO `users` (id, Fistname, Lastname, Age, Gender, Phone, Email, Status_id)
VALUE (4, 'Jessica', 'Leo', 23, 'Female', '+144045565685', 'jessicaleo@gmail.com', 3);

INSERT INTO `order_phone` (`id`, `Client_id`, `Total`, `Payment_id`, `Buying_id`, `Address`) VALUE (1)