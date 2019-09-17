/* Задание 4
 * Ознакомьтесь более подробно с документацией утилиты mysqldump. 
 * Создайте дамп единственной таблицы help_keyword базы данных mysql. 
 * Причем добейтесь того, чтобы дамп содержал только первые 100 строк таблицы
 */
-- RUN: mysql> source task4.sql
DROP DATABASE IF EXISTS mysql_copy;
CREATE DATABASE mysql_copy;
-- make copy of mysql db (to protect it from crushing)
\! mysqldump mysql > mysql_copy.sql
\! mysql mysql_copy < mysql_dump.sql
-- copy first 100 lines from help_keyword table of mysql to 100_keywords.sql
\! mysqldump --opt -w"1 limit 100" mysql help_keyword > 100_keywords.sql
-- 100_keywords table to my mysql_copy
\! mysql mysql_copy < 100_keywords.sql
use mysql_copy;
-- printing help_keyword dump (you will see 100 lines)
SELECT * FROM help_keyword;

