/* Задание 3 (по теме "Операторы, фильтрация, сортировка и ограничение")
 * В таблице складских запасов storehouses_products
 * в поле value могут встречаться самые разные цифры: 0, если товар закончился и выше нуля, если на складе имеются запасы. 
 * Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value. 
 * Однако, нулевые записи должны выводиться в конце, после всех записей.
*/

DROP DATABASE iF EXISTS homework;
CREATE DATABASE homework;
use homework;
DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products(
	id INT AUTO_INCREMENT not null PRIMARY KEY,
	value INT
);
INSERT INTO storehouses_products (value) VALUES  (0),(2500), (0), (30), (500), (1);
/*  ORDER BY IF: в зависимости от условия, меняем поле по которому осуществляется сортировка */
SELECT * FROM storehouses_products ORDER BY IF(value = 0, 1, 0), value;

