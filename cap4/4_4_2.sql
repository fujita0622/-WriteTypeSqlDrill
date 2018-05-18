4-4 問2 社員テーブル(employee)上、社員の氏・名定義をいずれも「VARCHAR(50)NULLを許可しない」に変更してみましょう。
以下の空欄を埋めて、SQL命令を完成させなさい。

ALTER TABLE
  ①
②
  l_name VARCHAR(50) NOT NULL,
③
;


[回答]
① employee
② MODIFY
③ MODIFY
  f_name VARCHAR(50) NOT NULL


[出力結果]
mysql> ALTER TABLE
    ->   employee
    -> MODIFY
    ->   l_name VARCHAR(50) NOT NULL,
    -> MODIFY
    ->   f_name VARCHAR(50) NOT NULL
    -> ;
Query OK, 26 rows affected (0.04 sec)
Records: 26  Duplicates: 0  Warnings: 0

mysql> show columns from employee;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| s_id        | char(7)      | NO   | PRI |         |       |
| l_name      | varchar(50)  | NO   |     | NULL    |       |
| f_name      | varchar(50)  | NO   |     | NULL    |       |
| l_name_kana | varchar(100) | YES  |     | NULL    |       |
| f_name_kana | varchar(100) | YES  |     | NULL    |       |
| sex         | smallint(6)  | YES  |     | NULL    |       |
| class       | varchar(20)  | YES  |     | NULL    |       |
| depart_id   | char(3)      | YES  |     | NULL    |       |
| b_id        | char(7)      | YES  |     | NULL    |       |
| last_update | date         | YES  |     | NULL    |       |
| retired     | smallint(6)  | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
11 rows in set (0.00 sec)