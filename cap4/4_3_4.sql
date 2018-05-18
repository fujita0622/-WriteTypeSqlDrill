3-4 問4 ユーザテーブル(usr)のf_name_kana列の後方に以下の2列を追加してみましょう。
・sex列 (VARCHAR(5)型,デフォルトは男)
・job列 (VARCHAR(30)型)


[回答]
[mysql]
-- ALTER TABLE命令でusrテーブルに新規の列を追加
ALTER TABLE
  usr
-- ADD句で新規の列を定義
ADD
-- sex列, 文字列型-可変長文字列(5文字) ,デフォルト値を'男'に指定
    sex VARCHAR(5) DEFAULT '男'
-- AFTER句で追加する列の位置を指定
-- f_name_kana列の後にsex列を挿入
AFTER 
  f_name_kana,
ADD
-- job列, 文字列型-可変長文字列(30文字) 
    job VARCHAR(30)
AFTER 
-- sex列の後にjob列を挿入
  sex
;


[postgreSQL]
-- postgreSQLは新規列の挿入位置を決めれらないため、下記手順でALTER TABLE命令を実行する
-- 1.挿入したい位置以降の列を削除
-- 2.新規列挿入
-- 3.[1]で削除した列を追加


-- ALTER TABLE命令でusrテーブルからprefecture以降の列を削除
ALTER TABLE 
  usr
-- DROP句で削除列を指定
DROP
  prefecture,
DROP
  city,
DROP
  o_address,
DROP
  tel,
DROP
  email
;

-- ALTER TABLE命令でusrテーブルに新規の列を追加
ALTER TABLE
  usr
-- ADD句で新規の列を定義
ADD
-- sex列, 文字列型-可変長文字列(5文字) ,デフォルト値を'男'に指定
  sex VARCHAR(5) DEFAULT '男',
ADD
-- job列, 文字列型-可変長文字列(30文字) 
  job VARCHAR(30)
;

-- ALTER TABLE命令でusrテーブルに新規の列を追加
ALTER TABLE
  usr
ADD
-- prefecture列, 文字列型-可変長文字列(15文字) 
  prefecture VARCHAR(15),
ADD
-- city列, 文字列型-可変長文字列(20文字) 
  city VARCHAR(20),
ADD
-- o_address列, 文字列型-可変長文字列(100文字) 
  o_address VARCHAR(100),
ADD
-- tel列, 文字列型-可変長文字列(20文字) 
  tel VARCHAR(20),
ADD
-- email列, 文字列型-可変長文字列(255文字)
  email VARCHAR(255)
;


[出力結果]
[mysql]
mysql> ALTER TABLE
    ->   usr
    -> ADD
    ->     sex VARCHAR(5) DEFAULT '男'
    -> AFTER 
    ->   f_name_kana,
    -> ADD
    ->     job VARCHAR(30)
    -> AFTER 
    ->   sex
    -> ;
Query OK, 21 rows affected (0.17 sec)
Records: 21  Duplicates: 0  Warnings: 0

mysql> show columns from usr;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| user_id     | char(7)      | NO   | PRI |         |       |
| l_name      | varchar(20)  | YES  |     | NULL    |       |
| f_name      | varchar(20)  | YES  |     | NULL    |       |
| l_name_kana | varchar(100) | YES  |     | NULL    |       |
| f_name_kana | varchar(100) | YES  |     | NULL    |       |
| sex         | varchar(5)   | YES  |     | 男      |       |
| job         | varchar(30)  | YES  |     | NULL    |       |
| prefecture  | varchar(15)  | YES  |     | NULL    |       |
| city        | varchar(20)  | YES  |     | NULL    |       |
| o_address   | varchar(100) | YES  |     | NULL    |       |
| tel         | varchar(20)  | YES  |     | NULL    |       |
| email       | varchar(255) | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
12 rows in set (0.01 sec)


[postgreSQL]
workbook=# ALTER TABLE 
workbook-#     usr
workbook-# DROP
workbook-#     prefecture,
workbook-# DROP
workbook-#     city,
workbook-# DROP
workbook-#     o_address,
workbook-# DROP
workbook-#     tel,
workbook-# DROP
workbook-#     email
workbook-# ;
ALTER TABLE
workbook=# \d usr;
                          Table "public.usr"
   Column    |          Type          | Collation | Nullable | Default 
-------------+------------------------+-----------+----------+---------
 user_id     | character(7)           |           | not null | 
 l_name      | character varying(20)  |           |          | 
 f_name      | character varying(20)  |           |          | 
 l_name_kana | character varying(100) |           |          | 
 f_name_kana | character varying(100) |           |          | 
Indexes:
    "usr_pkey" PRIMARY KEY, btree (user_id)

workbook=# ALTER TABLE
workbook-#   usr
workbook-# ADD
workbook-#     sex VARCHAR(5) DEFAULT '男',
workbook-# ADD
workbook-#     job VARCHAR(30)
workbook-# ;
ALTER TABLE
workbook=# \d usr;
                                  Table "public.usr"
   Column    |          Type          | Collation | Nullable |         Default         
-------------+------------------------+-----------+----------+-------------------------
 user_id     | character(7)           |           | not null | 
 l_name      | character varying(20)  |           |          | 
 f_name      | character varying(20)  |           |          | 
 l_name_kana | character varying(100) |           |          | 
 f_name_kana | character varying(100) |           |          | 
 sex         | character varying(5)   |           |          | '男'::character varying
 job         | character varying(30)  |           |          | 
Indexes:
    "usr_pkey" PRIMARY KEY, btree (user_id)

workbook=# ALTER TABLE
workbook-#   usr
workbook-# ADD
workbook-#   prefecture VARCHAR(15),
workbook-# ADD
workbook-#   city VARCHAR(20),
workbook-# ADD
workbook-#   o_address VARCHAR(100),
workbook-# ADD
workbook-#   tel VARCHAR(20),
workbook-# ADD
workbook-#   email VARCHAR(255)
workbook-# ;
ALTER TABLE
workbook=# \d usr;
                                  Table "public.usr"
   Column    |          Type          | Collation | Nullable |         Default         
-------------+------------------------+-----------+----------+-------------------------
 user_id     | character(7)           |           | not null | 
 l_name      | character varying(20)  |           |          | 
 f_name      | character varying(20)  |           |          | 
 l_name_kana | character varying(100) |           |          | 
 f_name_kana | character varying(100) |           |          | 
 sex         | character varying(5)   |           |          | '男'::character varying
 job         | character varying(30)  |           |          | 
 prefecture  | character varying(15)  |           |          | 
 city        | character varying(20)  |           |          | 
 o_address   | character varying(100) |           |          | 
 tel         | character varying(20)  |           |          | 
 email       | character varying(255) |           |          | 
Indexes:
    "usr_pkey" PRIMARY KEY, btree (user_id)