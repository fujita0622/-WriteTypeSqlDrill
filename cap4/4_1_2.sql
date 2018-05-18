4-1 問2 注文詳細テーブル(order_desc)を新規に作成してみましょう。
以下の空欄を埋めて、SQL命令を完成させなさい。

①
  order_desc
  (
    po_id INT NOT NULL,
    p_id CHAR(10) NOT NULL,
    ②,
    ③(po_id, p_id)
  )
;


[回答]
① CREATE TABLE
② quantity INT
③ PRIMARY KEY


[出力結果]
CREATE TABLE

workbook=# \d order_desc;
                 Table "public.order_desc"
  Column  |     Type      | Collation | Nullable | Default 
----------+---------------+-----------+----------+---------
 po_id    | integer       |           | not null | 
 p_id     | character(10) |           | not null | 
 quantity | integer       |           |          | 
Indexes:
    "order_desc_pkey" PRIMARY KEY, btree (po_id, p_id)