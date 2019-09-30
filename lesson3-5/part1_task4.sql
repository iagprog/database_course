/* Задание 4 (по теме "Операторы, фильтрация, сортировка и ограничение")
 * Из таблицы users необходимо извлечь пользователей, 
 * родившихся в августе и мае. 
 * Месяцы заданы в виде списка английских названий ('may', 'august')
*/

DROP DATABASE iF EXISTS homework;
CREATE DATABASE homework;
use homework;
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at VARCHAR(255) COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

INSERT INTO users (name, birthday_at) VALUES
  ('Gennady', 'August 5 1990'),
  ('Natalya', 'Novmeber 12 1984 '),
  ('Alexander', 'May 20 1985'),
  ('Sergey', 'September 14 1988'),
  ('Ivan', 'May 12 1998'),
  ('Maria', 'August 29 1992');
  
 SELECT name, birthday_at
 FROM users
 WHERE birthday_at LIKE '%August%' OR birthday_at LIKE '%MAY%';