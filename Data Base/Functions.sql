SELECT CONCAT_WS (' ', `Lastname`, `Fistname`, 'is', Age, 'year`s old.') FROM `users`;
SELECT * FROM `users`;

DROP TABLE `order_phone`;

DELETE FROM order_phone

ALTER TABLE `order_phone`
DROP COLUMN Order_day;