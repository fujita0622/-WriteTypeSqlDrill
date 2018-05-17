2-1 問3 店舗テーブル(shop)と月間売り上げテーブル(sales)から2012年12月の全売上高を、売上高の低い順に出力してみましょう。


[回答]
-- shopテーブルのs_name、salesテーブルのs_value列を取得
SELECT 
  sh.s_name,
  sl.s_value
-- shopテーブルをsalesテーブルと統合する
-- ASキーワードでshopテーブルを'sh'、salesテーブルを'sl'と別名をつける
FROM 
  shop AS sh
INNER JOIN 
  sales AS sl
ON
-- 統合するキー
-- shopテーブルの店舗コード(s_id)とsalesテーブルの店舗コード(s_id)
  sh.s_id = sl.s_id
WHERE 
-- 取得条件
-- salesテーブルのs_date列の'2012-01'から'2012-12'の間の値
  sl.s_date BETWEEN '2012-01' AND '2012-12'
-- 並替条件
ORDER BY 
-- 並替条件
-- salesテーブルの売上高(s_value列)が大きい順(ASC)
  sl.s_value ASC;

[出力結果]
    s_name    | s_value 
--------------+---------
 東桜町店     |    9861
 東桜町店     |    9975
 北花町東店   |   10124
 北花町駅前店 |   10142
 北花町東店   |   10456
 三吉町店     |   10784
 三吉町店     |   11145
 北花町駅前店 |   11234
 三吉町南店   |   12032
(9 rows)