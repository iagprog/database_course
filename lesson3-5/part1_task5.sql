/* Задание 5 (по теме "Операторы, фильтрация, сортировка и ограничение")
 * Из таблицы catalogs извлекаются записи при помощи запроса. SELECT * FROM catalogs WHERE id IN (5, 1, 2); 
 * Отсортируйте записи в порядке, заданном в списке IN
*/

DROP DATABASE iF EXISTS homework;
CREATE DATABASE homework;
use homework;
DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название раздела',
  UNIQUE unique_name(name(10))
) COMMENT = 'Разделы интернет-магазина';

INSERT INTO catalogs VALUES
  (NULL, 'Processors'),
  (NULL, 'Motherboards'),
  (NULL, 'Video cards'),
  (NULL, 'Hard disks'),
  (NULL, 'RAM');
 SELECT * FROM catalogs WHERE id IN (5, 1, 2) ORDER BY id = 5 DESC, id ASC;
 