3-4 問3 書籍情報テーブル(books)のcategory_id列の後方にsales(INT型)を追加してみましょう。

[回答]
[mysql]
-- ALTER TABLE命令でbooksテーブルに新規の列を追加
ALTER TABLE 
  books
ADD 
-- ADD句で新規の列を定義
-- sales列, 整数型
  sales INT
-- AFTER句で追加する列の位置を指定
-- category_idの後にsales列を挿入
AFTER
  category_id
;


[postgreSQL]
ALTER TABLE 
-- ALTER TABLE命令でbooksテーブルに新規の列を追加
  books
-- ADD句で新規の列を定義(postgreSQLはAFTER句が使えないのでテーブルの末尾に新規列が追加される)
ADD 
-- sales列, 整数型
  sales INT
;


[出力結果]
[mysql]
mysql> ALTER TABLE 
    ->   books
    -> ADD 
    ->   sales INT
    -> AFTER
    ->   category_id
    -> ;
Query OK, 14 rows affected (0.14 sec)
Records: 14  Duplicates: 0  Warnings: 0

mysql> show columns from books;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| isbn         | char(17)     | NO   | PRI |         |       |
| title        | varchar(255) | YES  |     | NULL    |       |
| price        | int(11)      | YES  |     | NULL    |       |
| publish      | varchar(30)  | YES  |     | NULL    |       |
| publish_date | date         | YES  |     | NULL    |       |
| category_id  | char(5)      | YES  |     | NULL    |       |
| sales        | int(11)      | YES  |     | NULL    |       |
| pages        | int(11)      | NO   |     | 0       |       |
| rating       | char(1)      | NO   |     | B       |       |
+--------------+--------------+------+-----+---------+-------+
9 rows in set (0.01 sec)


[postgreSQL]
workbook=# ALTER TABLE 
workbook-#   books
workbook-# ADD 
workbook-#   sales INT
workbook-# ;
ALTER TABLE

workbook=# \d books;
                          Table "public.books"
    Column    |          Type          | Collation | Nullable | Default 
--------------+------------------------+-----------+----------+---------
 isbn         | character(17)          |           | not null | 
 title        | character varying(255) |           |          | 
 price        | integer                |           |          | 
 publish      | character varying(30)  |           |          | 
 publish_date | date                   |           |          | 
 category_id  | character(5)           |           |          | 
 sales        | integer                |           |          | 
Indexes:
    "books_pkey" PRIMARY KEY, btree (isbn)