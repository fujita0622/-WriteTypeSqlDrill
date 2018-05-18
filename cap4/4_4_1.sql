4-4 問1 書籍情報テーブル(books)上、publish列の定義を「VARCHAR(100)NULLを許可」で変更してみましょう。

① 
  books
MODIFY
  ② 
;


[回答]
① ALTER TABLE
② publish VARCHAR(100) NULL

[出力結果]
mysql> ALTER TABLE 
    ->   books
    -> MODIFY
    ->   publish VARCHAR(100) NULL
    -> ;
Query OK, 14 rows affected (0.15 sec)
Records: 14  Duplicates: 0  Warnings: 0

mysql> show columns from books;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| isbn         | char(17)     | NO   | PRI |         |       |
| title        | varchar(255) | YES  |     | NULL    |       |
| price        | int(11)      | YES  |     | NULL    |       |
| publish      | varchar(100) | YES  |     | NULL    |       |
| publish_date | date         | YES  |     | NULL    |       |
| category_id  | char(5)      | YES  |     | NULL    |       |
| sales        | int(11)      | YES  |     | NULL    |       |
| pages        | int(11)      | NO   |     | 0       |       |
| rating       | char(1)      | NO   |     | B       |       |
+--------------+--------------+------+-----+---------+-------+
9 rows in set (0.00 sec)