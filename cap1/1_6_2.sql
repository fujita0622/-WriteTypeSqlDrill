1-6 問2 ユーザテーブル(usr)から東京都在住で、かつ、E-mailアドレスのドメインが「examples.com」のユーザ情報だけを取り出してみましょう。

SELECT
  l_name,
  f_name,
  email
FROM
  usr
WHERE 
  ① 
AND
  ②
;


[回答]
① prefecture = '東京都'
② email LIKE '%examples.com'


[出力結果]
mysql> SELECT l_name, f_name, email FROM usr WHERE prefecture = '東京都' AND email LIKE '%examples.com';
+--------+--------+------------------+
| l_name | f_name | email            |
+--------+--------+------------------+
| 小野   | 雄二   | ono@examples.com |
+--------+--------+------------------+
1 row in set (0.01 sec)
