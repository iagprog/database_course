/* Задание 3
 * Создайте дамп базы данных example из предыдущего задания,
 * разверните содержимое дампа в новую базу данных sample.*/

-- Запуск: mysql> source task3.sql
-- (после запуска task2.sql)
DROP DATABASE IF EXISTS sample;
CREATE DATABASE sample;
\! mysqldump example > example_dump.sql;
\! mysql sample < example_dump.sql;
use sample;
SELECT * from users;
