3-6 問2 問1のSQL命令を相関サブクエリを使って書き換えてみましょう。

①
  employee
SET
  depart_id = 'Z99'
WHERE
  ②
    (
      SELECT
        *
      FROM
        depart
      WHERE
        ③
    )
;


[回答]
① UPDATE
② NOT EXISTS
③ employee.depart_id = depart.depart_id

UPDATE
  employee
SET
  depart_id = 'Z99'
WHERE
  NOT EXISTS
    (
      SELECT
        *
      FROM
        depart
      WHERE
        employee.depart_id = depart.depart_id
    )
;


[出力結果]
UPDATE 2

workbook=# SELECT * from employee WHERE depart_id = 'Z99';
  s_id   | l_name | f_name | l_name_kana | f_name_kana | sex |    class     | depart_id |  b_id   | last_update | retired 
---------+--------+--------+-------------+-------------+-----+--------------+-----------+---------+-------------+---------
 NI00001 | 西     | 雄一   | ニシ        | ユウイチ    |   1 | アシスタント | Z99       |         | 2013-01-10  |       0
 NI00002 | 新渡戸 | 康治   | ニトベ      | コウジ      |   1 | アシスタント | Z99       |         | 2013-01-15  |       0
(2 rows)
