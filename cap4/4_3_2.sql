3-4 問2 月間売り上げテーブル(sales)を主キーのない状態でまず新規作成してみましょう。
これに対して、後から主キーを追加します。
以下の空欄を埋めて、正しいSQL命令を完成させなさい。

①
  sales
  (
    ②,
    s_date DATE NOT NULL,
    s_value INT DEFAULT 0
  )
;
③
  sales
ADD
  ④
;


[回答]
① CREATE TABLE
② s_id CHAR(5) NOT NULL
③ ALTER TABLE
④ PRIMARY KEY(s_id, s_date)


[出力結果]
[mysql]
mysql> CREATE TABLE
    ->   sales
    ->   (
    ->     s_id CHAR(5) NOT NULL,
    ->     s_date DATE NOT NULL,
    ->     s_value INT DEFAULT 0
    ->   )
    -> ;
Query OK, 0 rows affected (0.04 sec)

mysql> ALTER TABLE
    ->   sales
    -> ADD
    ->   PRIMARY KEY(s_id, s_date)
    -> ;
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> show columns from sales;
+---------+---------+------+-----+---------+-------+
| Field   | Type    | Null | Key | Default | Extra |
+---------+---------+------+-----+---------+-------+
| s_id    | char(5) | NO   | PRI | NULL    |       |
| s_date  | date    | NO   | PRI | NULL    |       |
| s_value | int(11) | YES  |     | 0       |       |
+---------+---------+------+-----+---------+-------+
3 rows in set (0.00 sec)


[postgreSql]