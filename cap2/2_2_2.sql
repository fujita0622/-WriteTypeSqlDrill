2-2 問2  社員テーブル(employee)と所属部署テーブル(depart)を統合し、所属社員が一人もいない「幽霊」部署を洗い出してみましょう。
以下の空欄を埋めて、SQL命令を完成させなさい。

SELECT 
  d.depart_id,
  d.depart_name
FROM
  depart AS d
①
  employee AS e
ON
  ②
WHERE
  ③ 
;


[回答]
① LEFT JOIN
② d.depart_id = e.depart_id
③ e.depart_id IS NULL


[出力結果]
 depart_id | depart_name 
-----------+-------------
 E02       | 第二営業部
(1 row)

