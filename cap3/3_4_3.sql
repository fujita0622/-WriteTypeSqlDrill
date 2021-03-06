3-4 問3 価格改正に伴い、商品テーブル(product)に登録されている全商品を10%値上げすることになりました。
対応するためのSQL命令を記述してみましょう。


[回答]
-- UPDATE命令で商品テーブル(product)を更新する
UPDATE 
  product
-- SET句のあとに更新内容を記述
-- [更新内容]
-- price列の値を10%加算する(price * 1.1)
SET 
  price = price * 1.1
;

[出力結果]
UPDATE 8

workbook=# select * from product;
    p_id    |    p_name    | price 
------------+--------------+-------
 PB00000001 | 黒ボールペン |   110
 PB00000002 | 赤ボールペン |   110
 DE00000001 | 電卓         |   660
 TO00000001 | トナー黒     |  1100
 TO00000002 | トナー赤     |  1100
 TU00000001 | 机           | 16500
 IS00000001 | 椅子         | 11000
 MA00000001 | マウスパッド |  1650
(8 rows)