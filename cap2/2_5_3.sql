2-5 問3 店舗テーブル(shop)と月間売り上げテーブル(sales)から2012年12月の売上高が店舗売上平均(2012年12月の平均)を下回っている店舗名とその売上高をあげてみましょう


[回答]
-- shopテーブルのs_name列とsalesテーブルのs_value列を取得
-- ASキーワードでshopテーブルを'sh'、salesテーブルを'sl'と別名をつける
SELECT
  sh.s_name,
  sl.s_value
--
FROM
  shop AS sh
INNER JOIN
  sales AS sl
-- 結合するキー
-- shopテーブルのs_id列とsalesテーブルのs_id列
ON
  sh.s_id = sl.s_id
WHERE
-- 取得条件
-- salesテーブルのs_date列の値が'2012-12'のレコード
  sl.s_date = '2012-12'
AND
-- 取得条件
-- サブクエリ
-- salesテーブルのs_value列の値がsalesテーブルのs_value列の平均値以下のレコード
  sl.s_value < 
  (
    SELECT
      AVG(s_value)
    FROM
      sales
    WHERE
      s_date = '2012-12'
  )
;


[出力結果]
   s_name   | s_value 
------------+---------
 東桜町店   |    9861
 北花町東店 |   10456
(2 rows)