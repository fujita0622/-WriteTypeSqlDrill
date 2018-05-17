1-13 問4 著者-書籍情報テーブル(author_books)で、著者ごとの書籍数を求めてみましょう。その際、書籍数が4冊以上の著者は「多い」、2冊以上4冊未満の著者は「普通」、2冊未満の著者は「少ない」と出力します。
また、出力列の名前は先頭から「著者ID」「カウント数」「評価」とします。


[回答]
-- FROMで指定したテーブルからauthor_idと著者(author_id)ごとのカウント数を取得
-- ASキーワードでauthor_id列は'著者ID'、著者(author_id)ごとのカウント数の列は'カウント数'と別名をつける
SELECT author_id AS 著者ID, COUNT(*) AS カウント数,
-- CASE句で著者(author_id)ごとのカウント数によって下記の条件分岐で評価する
CASE
-- 著者(author_id)ごとのカウント数が4以上の場合
  WHEN COUNT(*) >= 4 THEN '多い'
-- 著者(author_id)ごとのカウント数が2以上4未満の場合
  WHEN COUNT(*) >= 2 THEN '普通'
-- それ以外の場合
  ELSE '少ない'
-- 上記の条件分岐によってでた値の列名にASキーワードで'評価'と列名をつける
END AS 評価
FROM author_books
-- GROUP BY句でauthor_id列をグループ化
GROUP BY author_id
;


[出力結果]
mysql> SELECT author_id AS 著者ID, COUNT(*) AS カウント数,
    -> CASE
    ->   WHEN COUNT(*) >= 4 THEN '多い'
    ->   WHEN COUNT(*) >= 2 THEN '普通'
    ->   ELSE '少ない'
    -> END AS 評価
    -> FROM author_books GROUP BY author_id;
+----------+-----------------+-----------+
| 著者ID   | カウント数      | 評価      |
+----------+-----------------+-----------+
| A0001    |               1 | 少ない    |
| K0001    |               1 | 少ない    |
| M0001    |               1 | 少ない    |
| S0001    |               1 | 少ない    |
| T0001    |               1 | 少ない    |
| Y0001    |               2 | 普通      |
| Y0002    |               4 | 多い      |
+----------+-----------------+-----------+
7 rows in set (0.00 sec)