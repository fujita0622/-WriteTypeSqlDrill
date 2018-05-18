2-4 問1 社員テーブル(employee)と所属部署テーブル(depart)、タイムカードテーブル(time_card)を統合し、社員コード'DA0001'における2012年12月分の勤務時間を日付について昇順に出力してみましょう見ましょう。
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
  e.r_date BETWEEN '2012-12-01' AND '2012-12-31'
ORDER BY
  ⑤
;


[回答]
① d.depart_name AS 所属部署名,
   e.f_name || e.f_name AS 社員氏名,
   t.work_time AS 勤務時間
② INNER JOIN
③ e.depart_id = d.depart_id
④ e.s_id = t.s_id
⑤ t.r_date


[出力結果]
  所属部署名 | 社員氏名 | 勤務時間 
------------+----------+----------
 人事部     | 一郎一郎 |        8
 人事部     | 一郎一郎 |       10
 人事部     | 一郎一郎 |        8
 人事部     | 一郎一郎 |        9
 人事部     | 一郎一郎 |        8
 人事部     | 一郎一郎 |        8
 人事部     | 一郎一郎 |        9
 人事部     | 一郎一郎 |        8
 人事部     | 一郎一郎 |       10
 人事部     | 一郎一郎 |        9
 人事部     | 一郎一郎 |        8
 人事部     | 一郎一郎 |        8
 人事部     | 一郎一郎 |        8
 人事部     | 一郎一郎 |        8
 人事部     | 一郎一郎 |        9
 人事部     | 一郎一郎 |        8
 人事部     | 一郎一郎 |       10
 人事部     | 一郎一郎 |        8
 人事部     | 一郎一郎 |        8
 人事部     | 一郎一郎 |        8