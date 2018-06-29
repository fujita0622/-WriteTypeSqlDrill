2-4 問1 社員テーブル(employee)と所属部署テーブル(depart)、タイムカードテーブル(time_card)を統合し、社員コード'DA0001'における2012年12月分の勤務時間を日付について昇順に出力して見ましょう。
出力列の別名は、先頭から「所属部署名」「社員氏名」「勤務時間」とします。

SELECT 
  ①
FROM
  (
    employee AS e
    ②
    depart AS d
    ON 
    ③
  )
②
  time_card AS t
ON 
  ④
WHERE
  e.s_id = 'DA00001'
AND
  t.r_date BETWEEN '2012-12-01' AND '2012-12-31'
ORDER BY
  ⑤
;


[回答]
① d.depart_name AS 所属部署名,
   e.l_name || e.f_name AS 社員氏名,
   t.work_time AS 勤務時間
② INNER JOIN
③ e.depart_id = d.depart_id
④ e.s_id = t.s_id
⑤ t.r_date ASC


[出力結果]
workbook=# SELECT 
workbook-#   d.depart_name AS 所属部署名,
workbook-#    e.l_name || e.f_name AS 社員氏名,
workbook-#    t.work_time AS 勤務時間
workbook-# FROM
workbook-#   (
workbook(#     employee AS e
workbook(#   INNER JOIN
workbook(#     depart AS d
workbook(#     ON 
workbook(#     e.depart_id = d.depart_id
workbook(#   )
workbook-# INNER JOIN
workbook-#   time_card AS t
workbook-# ON 
workbook-#   e.s_id = t.s_id
workbook-# WHERE
workbook-#   e.s_id = 'DA00001'
workbook-# AND
workbook-#   t.r_date BETWEEN '2012-12-01' AND '2012-12-31'
workbook-# ORDER BY
workbook-#   t.r_date ASC
workbook-# ;
 所属部署名 | 社員氏名 | 勤務時間 
------------+----------+----------
 人事部     | 大門一郎 |        8
 人事部     | 大門一郎 |       10
 人事部     | 大門一郎 |        8
 人事部     | 大門一郎 |        9
 人事部     | 大門一郎 |        8
 人事部     | 大門一郎 |        8
 人事部     | 大門一郎 |        9
 人事部     | 大門一郎 |        8
 人事部     | 大門一郎 |       10
 人事部     | 大門一郎 |        9
 人事部     | 大門一郎 |        8
 人事部     | 大門一郎 |        8
 人事部     | 大門一郎 |        8
 人事部     | 大門一郎 |        8
 人事部     | 大門一郎 |        9
 人事部     | 大門一郎 |        8
 人事部     | 大門一郎 |       10
 人事部     | 大門一郎 |        8
 人事部     | 大門一郎 |        8
 人事部     | 大門一郎 |        8
(20 rows)