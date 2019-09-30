/* Задание 1 (по теме "Агрегация данных")
 * Подсчитайте средний возраст пользователей в таблице users
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
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  age INT COMMENT 'Возраст'
) COMMENT = 'Покупатели';

INSERT INTO users (name, birthday_at) VALUES
  ('Gennady', '1990-10-05'),
  ('Natalya', '1984-11-12'),
  ('Alexander', '1985-05-20'),
  ('Sergey', '1988-02-14'),
  ('Ivan', '1998-01-12'),
  ('Maria', '1992-08-29');
 /* считаем сколько лет каждому пользователю */
UPDATE users SET age = FLOOR((TO_DAYS(NOW()) - TO_DAYS(birthday_at)) / 365.25);
/* выведем на экран возраст каждого пользователя*/
SELECT name, age FROM users;
/* средний возраст пользователей */
SELECT ROUND(AVG(age)) as average_age FROM users;