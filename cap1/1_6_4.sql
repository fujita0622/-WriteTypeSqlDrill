1-6 問4 社員テーブル(employee)から「山田奈美」さんの情報だけを抜き出しましょう。全ての列を取り出すとします。


[回答]
-- employeeテーブルの全ての列を取得
-- 取得条件: 論理演算子ANDでl_nameが'山田'とf_name = '奈美'の両方一致した場合のフィールドだけに絞る
SELECT * FROM employee WHERE l_name = '山田' AND f_name = '奈美';


[出力結果]
mysql> SELECT * FROM employee WHERE l_name = '山田' AND f_name = '奈美';
+---------+--------+--------+-------------+-------------+------+--------+-----------+---------+-------------+---------+
| s_id    | l_name | f_name | l_name_kana | f_name_kana | sex  | class  | depart_id | b_id    | last_update | retired |
+---------+--------+--------+-------------+-------------+------+--------+-----------+---------+-------------+---------+
| YA00001 | 山田   | 奈美   | ヤマダ      | ナミ        |    2 | 課長   | S01       | SA00001 | 2012-10-15  |       0 |
+---------+--------+--------+-------------+-------------+------+--------+-----------+---------+-------------+---------+
1 row in set (0.01 sec)
