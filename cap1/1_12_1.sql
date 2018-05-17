1-12 問1 アンケート回答テーブル(quest)から都道府県ごとに年齢の平均を求め、35歳以上50歳未満のデータのみ取り出してみましょう。以下の空欄を埋めて、SQL命令を完成させてください。

SELECT
  ① 
FROM
  quest 
GROUP BY 
  prefecture 
HAVING 
  ②
;


[回答]
① prefecture, AVG(age)
② AVG(age) BETWEEN 30 AND 50


[出力結果]
mysql> SELECT prefecture, AVG(age) FROM quest GROUP BY prefecture HAVING AVG(age) BETWEEN 30 AND 50;
+--------------+----------+
| prefecture   | AVG(age) |
+--------------+----------+
| 茨城県       |  38.6667 |
| 神奈川県     |  31.2500 |
| 千葉県       |  34.5000 |
| 東京都       |  33.3333 |
+--------------+----------+
4 rows in set (0.05 sec)