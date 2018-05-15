1-5 問4 社員テーブル(employee)から氏(カナ)が「ア」で始まる社員の情報だけを抜き出しましょう。取り出す列は、l_name, f_name列とします。


[回答]
-- employeeテーブルでl_name, f_name列を取得
-- 取得条件:l_name_kana列
--         「LIKE 'ア%'」で「ア」で始まる前方一致条件を指定
SELECT l_name, f_name FROM employee WHERE l_name_kana LIKE 'ア%';


[出力結果]
mysql> SELECT l_name, f_name FROM employee WHERE l_name_kana LIKE 'ア%';
+--------+--------+
| l_name | f_name |
+--------+--------+
| 相沢   | 聡     |
+--------+--------+
1 row in set (0.01 sec)