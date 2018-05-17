1-9 問3 月間売り上げテーブル(sales)から店舗別の累計売上高を算出するためのSQL命令を記述してみましょう。


[回答]
-- salesテーブルからs_id列と集計関数sumでs_value列の合計値をs_id列をグループ化して取得
SELECT s_id, sum(s_value) FROM sales GROUP BY s_id;


[出力結果]
mysql> SELECT s_id, sum(s_value) FROM sales GROUP BY s_id;
+-------+--------------+
| s_id  | sum(s_value) |
+-------+--------------+
| H0001 |        19836 |
| K0001 |        21376 |
| K0002 |        20580 |
| M0001 |        21929 |
| M0002 |        12032 |
| N0001 |        20988 |
+-------+--------------+
6 rows in set (0.01 sec)