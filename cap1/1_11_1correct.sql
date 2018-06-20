1-11 問1 アンケート回答テーブル(quest)から都道府県別の評価の平均値を求めてみましょう。その際、平均値は小数点以下を四捨五入します。以下の空欄を埋めて、SQL命令を完成させてください。

SELECT 
  prefecture,
  ① AS 評価平均 
FROM
  quest
GROUP BY
②
;


[回答]
① ROUND(AVG(answer1), 0)
② prefecture


[出力結果]
mysql> SELECT prefecture, ROUND(AVG(answer1)) AS 評価平均 FROM quest GROUP BY prefecture;
+--------------+--------------+
| prefecture   | 評価平均     |
+--------------+--------------+
| 茨城県       |            2 |
| 埼玉県       |            3 |
| 神奈川県     |            2 |
| 千葉県       |            3 |
| 東京都       |            2 |
+--------------+--------------+
5 rows in set (0.00 sec)