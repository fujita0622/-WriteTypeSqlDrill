3-4 問1 書籍情報テーブル(books)に対して、page列(INT型、デフォルト値は0)、rating列(CHAR(1)型、デフォルトは'B')を新たに追加してみましょう。追加先は、テーブル定義の一番最後とします。
空欄を埋めて、正しいSQL命令を完成させなさい。

①
  books
ADD
  ②,
ADD
  rating CHAR(1) DEFAULT 'B' NOT NULL
AFTER
  ③
;


[回答]
① ALTER TABLE
② pages INT DEFAULT 0 NOT NULL,
③ category_id


[出力結果]
mysql> ALTER TABLE
    ->   books
    -> ADD
    ->   pages INT DEFAULT 0 NOT NULL,
    -> ADD
    ->   rating CHAR(1) DEFAULT 'B' NOT NULL
    -> ;
Query OK, 14 rows affected (0.04 sec)
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
| pages        | int(11)      | NO   |     | 0       |       |
| rating       | char(1)      | NO   |     | B       |       |
+--------------+--------------+------+-----+---------+-------+
8 rows in set (0.01 sec)