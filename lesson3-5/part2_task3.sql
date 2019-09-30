/* Задание 3 (по теме "Агрегация данных")
 * Подсчитайте произведение чисел в столбце таблицы.
*/
DROP DATABASE iF EXISTS homework;
CREATE DATABASE homework;
use homework;
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  value INT
) ;

INSERT INTO users (value) VALUES (1), (2), (3), (4), (5);
/* для решения воспользуемся свойствами логарифма:*/
/* ln(1*2*3*4*5) = ln(1)+ln(2)+ln(3)+ln(4)+ln(5)*/
/* exp(ln(1*2*3*4*5)) = exp(ln(1)+ln(2)+ln(3)+ln(4)+ln(5)) = 1*2*3*4*5 */
SELECT ROUND(exp(sum(ln(value)))) as result from users;