4-4 問3 著者情報テーブル(author)上、著者名の定義を「VARCHAR(100)デフォルト値の空文字列」に変更してみましょう。

[回答]
[mysql]
ALTER TABLE
  author
MODIFY
  name VARCHAR(100) DEFAULT ""
;


[postgreSQL]
ALTER TABLE
  author 
ALTER COLUMN
  name 
TYPE 
  VARCHAR(100)
;

ALTER TABLE
  author 
ALTER COLUMN
  name 
SET
  DEFAULT ''
;


[出力結果]
[mysql]
mysql> ALTER TABLE
    ->   author
    -> MODIFY
    ->   name VARCHAR(100) DEFAULT ""
    -> ;
Query OK, 7 rows affected (0.04 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql> show columns from author;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| author_id | char(5)      | NO   | PRI |         |       |
| name      | varchar(100) | YES  |     |         |       |
| name_kana | varchar(100) | YES  |     | NULL    |       |
| birth     | date         | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.01 sec)


[postgreSQL]
workbook=# ALTER TABLE
workbook-#   author 
workbook-# ALTER COLUMN
workbook-#   name 
workbook-# TYPE 
workbook-#   VARCHAR(100)
workbook-# ;
ALTER TABLE
workbook=# ALTER TABLE
workbook-#   author 
workbook-# ALTER COLUMN
workbook-#   name 
workbook-# SET
workbook-#   DEFAULT ''
workbook-# ;
ALTER TABLE
workbook=# \d author;
                               Table "public.author"
  Column   |          Type          | Collation | Nullable |        Default        
-----------+------------------------+-----------+----------+-----------------------
 author_id | character(5)           |           | not null | 
 name      | character varying(100) |           |          | ''::character varying
 name_kana | character varying(100) |           |          | 
 birth     | date                   |           |          | 
Indexes:
    "author_pkey" PRIMARY KEY, btree (author_id)