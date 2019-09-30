/* Задание 2 (по теме "Агрегация данных")
 * Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
 * Следует учесть, что необходимы дни недели текущего года, а не года рождения.
*/

DROP DATABASE iF EXISTS homework;
CREATE DATABASE homework;
use homework;
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

INSERT INTO users (name, birthday_at) VALUES
  ('Gennady', '1990-10-05'),
  ('Natalya', '1984-11-12'),
  ('Alexander', '1985-05-20'),
  ('Sergey', '1988-02-14'),
  ('Ivan', '1998-01-12'),
  ('Maria', '1992-08-29');
 /* считаем кол-во дней, по которым дни рождения, объединяя в группы по этим дням*/
SELECT 
 COUNT(*) AS total, 
 /*YEAR(NOW()) - текущий год, DATE_FORMAT(birthday_at,'-%m-%d')) - дата д.р. без года*/
 /*concat - слияние текущего года и даты д.р., дальше узнаем DAYNAME текущего года для конкретной даты*/
 DAYNAME(concat(YEAR(NOW()),DATE_FORMAT(birthday_at,'-%m-%d'))) AS day_of_week 
FROM 
 users 
GROUP BY day_of_week;
 
