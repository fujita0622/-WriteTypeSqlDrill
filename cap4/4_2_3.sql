4-2 問3 商品テーブル(product)上に商品名をキーとしたインデックスを作成してみましょう。
インデックス名はind_productとします。


[回答]
-- 商品テーブル(product)のインデックスを作成
CREATE INDEX
  ind_product
ON
  product
-- ()内にインデックスに含める列を定義
  (
    p_name
  )
;


[出力結果]
CREATE INDEX

postgres=# \di ind_product;
                 List of relations
 Schema |    Name     | Type  |  Owner   |  Table  
--------+-------------+-------+----------+---------
 public | ind_product | index | syuntaro | product
(1 row)
