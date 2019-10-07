DROP DATABASE IF EXISTS homework;
CREATE DATABASE homework;
USE homework;

DROP TABLE IF EXISTS flights;
CREATE TABLE flights(
  id SERIAL PRIMARY KEY,
  `from` varchar(255),
  `to` varchar(255)
);

INSERT INTO flights
	(id, `from`, `to`)
VALUES
  (1, 'moscow', 'omsk'),
  (2, 'novgorod', 'kazan'),
  (3, 'irkutsk', 'moscow'),
  (4, 'omsk', 'irkutsk'),
  (5, 'moscow', 'kazan');
 

DROP TABLE IF EXISTS cities;
CREATE TABLE cities(
  label varchar(255),
  name varchar(255)
);

INSERT INTO cities
  (label , name)
VALUES
  ('moscow', 'Москва'),
  ('irkutsk', 'Иркутск'),
  ('novgorod', 'Новгород'),
  ('kazan', 'Казань'),
  ('omsk', 'Омск');
-- интуитивное решение
UPDATE 
  flights, cities
SET 
  flights.`from` = cities.name
WHERE
  flights.`from` = cities.label;

UPDATE 
  flights, cities
SET 
  flights.`to` = cities.name
WHERE
  flights.`to` = cities.label;
 
SELECT * FROM flights;
 -- в комментариях сначала выводится первый столбец с русскими полями, затем второй столбец с русскими полями
 -- каким образом объединить оба верных столбца в одну таблицу? (UNION выводит все в 1 столбец, JOIN также не подходит..)
/*SELECT
 	cities.name AS `from`, cities.name AS `to`
FROM
	cities JOIN flights
ON
 	flights.`from` = cities.label
 	*/
/*SELECT
 	cities.name AS `to`
FROM
	cities JOIN flights
ON
 	flights.`to` = cities.label;
*/

