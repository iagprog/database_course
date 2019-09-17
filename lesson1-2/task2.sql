/* Задание 2
 * Создайте базу данных example, 
 * разместите в ней таблицу users, 
 * состоящую из двух столбцов, числового id и строкового name.
*/
-- Запуск: mysql> source task2.sql
DROP DATABASE IF EXISTS example;
CREATE DATABASE example;
use example;
CREATE TABLE users(
	id INT AUTO_INCREMENT not null primary key, 
	name varchar(100)
);
INSERT INTO users (name) VALUES('test1');
INSERT INTO users (name) VALUES('test2');
SELECT * FROM users;
