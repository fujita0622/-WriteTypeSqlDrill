4-1 問3 月間売り上げテーブル(sales)を新規に作成してみましょう。


[回答]
-- CREATE命令でsalesテーブルを作成
CREATE TABLE
  sales
-- ()内にテーブル構造を定義
  (
-- s_id列,文字列型 - 固定長文字列(5文字) , 値のNULLを拒否
    s_id CHAR(5) NOT NULL,
-- s_id列,文字列型 - 可変長文字列(7文字) , 値のNULLを拒否
    s_date CHAR(7) NOT NULL,
-- s_value列,  整数型
    s_value INT,
    -- 複合キーの付加(s_id, s_date)
    PRIMARY KEY(s_id, s_date)
  )
;


[出力結果]
CREATE TABLE

workbook=# \d sales;
                  Table "public.sales"
 Column  |     Type     | Collation | Nullable | Default 
---------+--------------+-----------+----------+---------
 s_id    | character(5) |           | not null | 
 s_date  | character(7) |           | not null | 
 s_value | integer      |           |          | 
Indexes:
    "sales_pkey" PRIMARY KEY, btree (s_id, s_date)