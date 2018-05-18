3-8 問1 所属部署テーブル(depart)にない所属部署に属する社員テーブル(employee)から削除してください。
以下の空欄を埋めて、SQL命令を完成させなさい。

①
  employee
WHERE
  depart_id
②
  (
    SELECT
      depart_id
    FROM
      ③
  )
;


[回答]
① DELETE FROM
② NOT IN
③ depart


[出力結果]
DELETE 2

workbook=# SELECT * FROM employee
workbook-# WHERE depart_id NOT IN
workbook-#   (
workbook(#     SELECT
workbook(#       depart_id
workbook(#     FROM
workbook(#       depart
workbook(#   )
workbook-# ;
 s_id | l_name | f_name | l_name_kana | f_name_kana | sex | class | depart_id | b_id | last_update | retired 
------+--------+--------+-------------+-------------+-----+-------+-----------+------+-------------+---------
(0 rows)