2-5 問2 所属部署テーブル(depart)から社員テーブル(employee)で使われていない部署コード、部署名を取り出しましょう。
以下の空欄を埋めて、SQL命令を完成させなさい。

SELECT 
  depart_id,
  depart_name
FROM
  ① 
WHERE
  ②
(
SELECT
  *
FROM
  employee
WHERE
  ③
)
;


[回答]
① depart
② NOT EXISTS
③ depart.depart_id = employee.depart_id


[出力結果]
mysql> SELECT 
    ->   depart_id,
    ->   depart_name
    -> FROM
    ->   depart
    -> WHERE
    ->   NOT EXISTS
    -> (
    -> SELECT
    ->   *
    -> FROM
    ->   employee
    -> WHERE
    ->   depart.depart_id = employee.depart_id
    -> )
    -> ;
+-----------+-----------------+
| depart_id | depart_name     |
+-----------+-----------------+
| E02       | 第二営業部      |
+-----------+-----------------+
1 row in set (0.04 sec)