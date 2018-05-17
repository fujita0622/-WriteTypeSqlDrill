1-9 問1 アンケート回答テーブル(quest)から性別ごとにそれぞれ年齢の最大/最小値を取り出してみましょう。以下の空欄を埋めてSQL命令を完成させてください。

SELECT
  ①
FROM
  quest
②
  sex;


[回答]
① sex, MAX(age),MIN(age)
② GROUP BY


[出力結果]
mysql> SELECT sex, MAX(age),MIN(age) FROM quest GROUP BY sex;
+-----+----------+----------+
| sex | MAX(age) | MIN(age) |
+-----+----------+----------+
| 女  |       40 |       25 |
| 男  |       64 |       18 |
+-----+----------+----------+
2 rows in set (0.00 sec)