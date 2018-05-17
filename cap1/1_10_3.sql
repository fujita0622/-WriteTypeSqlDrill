1-10 問3 ユーザテーブル(usr)から都道府県別のユーザ数を求めてみましょう。なお、取り出す列の別名は、それぞれ「都道府県名」「ユーザ数」とします。


[回答]
-- usrテーブルからprefecture、集計関数COUNTでprefecture列の合計値を取得
-- 取得条件
-- ASキーワードでprefecture列を'都道府県名'、COUNT(*)列を'ユーザ数'と別名をつける
-- GROUP BY句でprefecture列をグループ化 ※COUNTはグループ化した値別にカウントする
SELECT prefecture AS '都道府県名', COUNT(*) AS 'ユーザ数' FROM usr GROUP BY prefecture;


[出力結果]
mysql> SELECT prefecture AS '都道府県名', COUNT(*) AS 'ユーザ数'  FROM usr GROUP BY prefecture;
+-----------------+--------------+
| 都道府県名      | ユーザ数     |
+-----------------+--------------+
| 茨城県          |            4 |
| 埼玉県          |            2 |
| 神奈川県        |            4 |
| 静岡県          |            2 |
| 千葉県          |            4 |
| 東京都          |            3 |
| 栃木県          |            2 |
+-----------------+--------------+
7 rows in set (0.00 sec)