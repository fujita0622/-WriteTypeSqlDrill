1-3 問1 アンケート回答テーブル(quest)から都道府県名を重複のない形式で取り出してみましょう。以下の空欄を埋めて、SQL命令を完成させてください。

SELECT
  ① prefecture
FROM
  ②
;


[回答]
① DISTINCT
② quest


[出力結果]
mysql> select distinct prefecture from quest;
+--------------+
| prefecture   |
+--------------+
| 東京都       |
| 神奈川県     |
| 茨城県       |
| 千葉県       |
| 埼玉県       |
+--------------+
5 rows in set (0.01 sec)