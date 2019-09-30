/* Задание 1 (по теме "Операторы, фильтрация, сортировка и ограничение")
 * Пусть в таблице users поля created_at и updated_at оказались незаполненными. 
 * Заполните их текущими датой и временем. 
*/

DROP DATABASE iF EXISTS homework;
CREATE DATABASE homework;
use homework;
DROP TABLE IF EXISTS users;
CREATE TABLE users(
	id INT AUTO_INCREMENT not null PRIMARY KEY,
	name VARCHAR(255),
	created_at DATETIME,
	updated_at DATETIME
);
/* заполняем таблицу именами, поля created_at и updated_at оставляем пустыми*/
INSERT INTO users (name) VALUES ('Alex'),('Fedor'),('Petr'),('Stepan'),('Andrey');
/* заполняем created_at и updated_at текущей датой и временем*/
UPDATE users SET created_at = NOW(), updated_at = NOW() WHERE created_at IS NULL OR updated_at IS NULL;
SELECT * FROM users;

