1-11 問4 書籍情報テーブル(books)で、出版社ごとの書籍価格の平均値を求めてみましょう。平均値が小数点数になった場合、小数点以下は切り捨てます。

[回答]
-- booksテーブルからpublish、price列を取得
-- 取得条件:
-- publishをグループ化して取得
-- price列を集計関数AVGでグループ化した値ごとの平均値を求め算術関FLOORで小数点以下を切り捨てて取得

SELECT publish, FLOOR(AVG(price)) FROM books GROUP BY publish;

[出力結果]
mysql> SELECT publish, FLOOR(AVG(price)) FROM books GROUP BY publish;
+--------------------+-------------------+
| publish            | FLOOR(AVG(price)) |
+--------------------+-------------------+
| 山田出版           |              2157 |
| 秀和システム       |              2400 |
| 日経BP             |              2433 |
| 翔泳社             |              3150 |
+--------------------+-------------------+
4 rows in set (0.00 sec)