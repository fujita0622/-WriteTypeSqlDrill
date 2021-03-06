3-2 問2 店舗テーブル(shop)からすべての店舗コードを抜き出し、月間売り上げテーブル(sales)に対して挿入してみましょう。
その際、売り上げ対象年月には今月の日付(YYYY-MM)を売上高には0を固定値でセットするものとします。


[回答]
-- INSERT文で月間売り上げテーブル(sales)にデータを挿入
INSERT INTO
  sales
-- ()内にデータを挿入する列を指定
  (
    s_id,
    s_date,
    s_value
  )
-- INSERT文で挿入する値をSELECT文で取得
-- shopテーブルからs_id, 
-- s_date,s_value列に対応する値は '2018-05', '0' と固定値でセット
SELECT
  s_id,
  '2018-05',
  0
FROM 
  shop
;


[出力結果]
INSERT 0 5

 s_id  | s_date  | s_value 
-------+---------+---------
 M0001 | 2012-12 |   11145
 H0001 | 2012-12 |    9861
 N0001 | 2012-12 |   11023
 K0001 | 2012-12 |   11234
 K0002 | 2012-12 |   10456
 M0001 | 2012-11 |   10784
 M0002 | 2012-11 |   12032
 H0001 | 2012-11 |    9975
 N0001 | 2012-11 |    9965
 K0001 | 2012-11 |   10142
 K0002 | 2012-11 |   10124
 M0001 | 2018-05 |       0
 M0002 | 2018-05 |       0
 H0001 | 2018-05 |       0
 K0001 | 2018-05 |       0
 K0002 | 2018-05 |       0
(16 rows)