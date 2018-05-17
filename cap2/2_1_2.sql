2-1 問2 店舗テーブル(shop)と月間売り上げテーブル(sales)から2012年12月の売り上げを売上高の高い順に出力してみましょう。

SELECT 
  sh.s_name,
  sl.s_value
FROM
  ①
INNER JOIN 
  ②
ON
  ③ 
WHERE
  ④
ORDER BY 
  ⑤
;


[回答]
① shop AS sh
② sales AS sl
③ sh.s_id = sl.s_id
④ s_date = '2012-12'
⑤ sl.s_value DESC


[出力結果]
    s_name    | s_value 
--------------+---------
 北花町駅前店 |   11234
 三吉町店     |   11145
 北花町東店   |   10456
 東桜町店     |    9861
(4 rows)