3-1 問4 以下は、(product)テーブルに対して、表のデータを挿入するためのSQL命令ですが、2点誤りがあります。誤りを指摘してください。

項目/値
商品コード/SB00000001
商品名/黒スタンプ
単価/1250

INSERT
  product
VALUES
(
  SB00000001,
  黒スタンプ,
  1250
)
;


[回答]
1. INSERT命令の構文は「INSERT」ではなく「INSERT INTO」
2. VALUES句で文字列として挿入するデータはシングルクオーテーションで囲まなければならない


[出力結果]
postgres=# INSERT INTO
postgres-#   product
postgres-# VALUES
postgres-# (
postgres(#   'SB00000001',
postgres(#   '黒スタンプ',
postgres(#   1250
postgres(# )
postgres-# ;
INSERT 0 1
postgres=# select * from product;
    p_id    |    p_name    | price 
------------+--------------+-------
 PB00000001 | 黒ボールペン |   100
 PB00000002 | 赤ボールペン |   100
 DE00000001 | 電卓         |   600
 TO00000001 | トナー黒     |  1000
 TO00000002 | トナー赤     |  1000
 TU00000001 | 机           | 15000
 IS00000001 | 椅子         | 10000
 MA00000001 | マウスパッド |  1500
 SB00000001 | 黒スタンプ   |  1250
(9 rows)