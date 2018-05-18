3-8 問2 問1のSQL命令を相関サブクエリを使って書き換えてみましょう。

DELETE FROM
  employee
WHERE
①
  (
    SELECT
      depart.depart_id
    FROM
      ②
    WHERE
      ③
  )
;


[回答]
① NOT EXISTS
② depart
③ employee.depart_id = depart.depart_id


[出力結果]
DELETE 2

postgres=# SELECT * FROM
postgres-#   employee
postgres-# WHERE
postgres-# NOT EXISTS
postgres-#   (
postgres(#     SELECT
postgres(#       depart.depart_id
postgres(#     FROM
postgres(#       depart
postgres(#     WHERE
postgres(#       employee.depart_id = depart.depart_id
postgres(#   )
postgres-# ;
 s_id | l_name | f_name | l_name_kana | f_name_kana | sex | class | depart_id | b_id | last_update | retired 
------+--------+--------+-------------+-------------+-----+-------+-----------+------+-------------+---------
(0 rows)