1-12 問2 アンケート回答テーブル(quest)から都道府県ごとに男性回答者のみの年齢の最高値を求め、60歳より大きい行のみを取り出してみましょう。

SELECT
  ① 
FROM
  quest 
② 
  sex = '男' 
GROUP BY
  prefecture
③
  MAX(age) > 60
;


[回答]
① prefecture, MAX(age)
② WHERE
③ HAVING


[出力結果]
mysql> SELECT prefecture, MAX(age) FROM quest WHERE sex = '男' GROUP BY prefecture HAVING MAX(age) > 60;
+------------+----------+
| prefecture | MAX(age) |
+------------+----------+
| 茨城県     |       64 |
+------------+----------+
1 row in set (0.00 sec)