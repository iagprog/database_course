/* Задание 2 (по теме "Операторы, фильтрация, сортировка и ограничение")
 * Таблица users была неудачно спроектирована. 
 * Записи created_at и updated_at были заданы типом VARCHAR
 * и в них долгое время помещались значения в формате "20.10.2017 8:10". 
 * Необходимо преобразовать поля к типу DATETIME, сохранив введеные ранее значения.
*/

DROP DATABASE iF EXISTS homework;
CREATE DATABASE homework;
use homework;
DROP TABLE IF EXISTS users;
/* исходная таблица user, которая неудачно спроектирована*/
CREATE TABLE users(
	id INT AUTO_INCREMENT not null PRIMARY KEY,
	name VARCHAR(255),
	created_at VARCHAR(255),
	updated_at VARCHAR(255)
);
/* заполним таблицу данными c датами формата "DD.MM.YYYY hh:mm" */
INSERT INTO users (name, created_at, updated_at) VALUES
  ('Alex', '29.09.2019 11:12','29.09.2019 11:12'),
  ('Fedor', '28.03.2016 23:22','28.03.2016 23:22'),
  ('Petr', '27.05.2018 12:50','27.05.2018 12:50'),
  ('Stepan', '22.07.2017 17:33','22.07.2017 17:33'),
  ('Andrey', '15.05.2015 07:11','15.05.2015 07:11');
/* DATETIME формат  выглядит как  'YYYY-MM-DD hh:mm:ss'*/
/* используем функцию DATE_FORMAT чтобы привести к нужному типу DATETIME*/
/* STR_TO_DATE: конвертируем строку в дату*/
SELECT 
id, 
name, 
DATE_FORMAT(STR_TO_DATE(created_at,'%d.%m.%Y %H:%i'),'%Y-%m-%d %H:%i:%s') AS created_at,
DATE_FORMAT(STR_TO_DATE(updated_at,'%d.%m.%Y %H:%i'),'%Y-%m-%d %H:%i:%s') AS updated_at
FROM users;
  