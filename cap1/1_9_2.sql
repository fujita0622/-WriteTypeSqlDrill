1-9 問2 アンケート回答テーブル(quest)から都道府県、性別ごとに本書の評価の平均を取り出してみましょう。以下の空欄を埋めてSQL命令を完成させてください。
※answer1が本書の評価

SELECT
  ①
FROM 
  quest 
ORDER BY
  ②
;


[回答]
① sex, prefecture, AVG(answer1)
② sex, prefecture


[出力結果]
mysql> SELECT sex, prefecture, AVG(answer1) FROM quest GROUP BY sex, prefecture;
+-----+--------------+--------------+
| sex | prefecture   | AVG(answer1) |
+-----+--------------+--------------+
| 女  | 茨城県       |       1.0000 |
| 女  | 神奈川県     |       2.0000 |
| 女  | 千葉県       |       3.0000 |
| 女  | 東京都       |       3.0000 |
| 男  | 茨城県       |       2.5000 |
| 男  | 埼玉県       |       3.0000 |
| 男  | 神奈川県     |       2.5000 |
| 男  | 千葉県       |       3.0000 |
| 男  | 東京都       |       1.6000 |
+-----+--------------+--------------+
9 rows in set (0.00 sec)