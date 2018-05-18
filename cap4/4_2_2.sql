4-2 問2 注文書テーブル(order_main)に対して、以下の内容で新規データを挿入してみましょう。
以下の空欄を埋めて、SQL命令を完成させなさい。

① 
  ind_order
ON
  ②
  (
    ③
  )
;


[回答]
① CREATE INDEX
② order_main
③ order_date,
delivery_date


[出力結果]
CREATE INDEX

postgres=# \di ind_order;
                 List of relations
 Schema |   Name    | Type  |  Owner   |   Table    
--------+-----------+-------+----------+------------
 public | ind_order | index | syuntaro | order_main
(1 row)