4-1 問1 著者情報テーブル(author)を新規に作成してみましょう。
以下の空欄を埋めて、SQL命令を完成させなさい。

CREATE TABLE
  ①
  (
    author_id CHAR(5) ②,
    name VARCHAR(30),
    name_kana VARCHAR(100),
    birth ③
  )
;


[回答]
① author
② NOT NULL
③ date


[出力結果]
CREATE TABLE

workbook=# \d author;
                        Table "public.author"
  Column   |          Type          | Collation | Nullable | Default 
-----------+------------------------+-----------+----------+---------
 author_id | character(5)           |           | not null | 
 name      | character varying(30)  |           |          | 
 name_kana | character varying(100) |           |          | 
 birth     | date                   |           |          | 
