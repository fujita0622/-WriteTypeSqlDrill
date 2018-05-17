1-10 問4 書籍情報テーブル(books)から出版社ごとの書籍価格の平均値を求めてみましょう。その際、取り出す列名はそれぞれ「出版社」「価格平均」とします。

[回答]
-- booksテーブルからpublish、集計関数AVGでprice列の平均値を取得
-- 取得条件:
-- ASキーワードでpublish列を'出版社'、AVG(price)を'価格平均'と別名をつける
-- publish列をグループ化して取得する
SELECT publish AS '出版社', AVG(price) AS '価格平均' FROM books GROUP BY publish;


[出力結果]
mysql> SELECT publish AS '出版社', AVG(price) AS '価格平均' FROM books GROUP BY publish;
+--------------------+--------------+
| 出版社             | 価格平均     |
+--------------------+--------------+
| 山田出版           |    2157.1429 |
| 秀和システム       |    2400.0000 |
| 日経BP             |    2433.3333 |
| 翔泳社             |    3150.0000 |
+--------------------+--------------+
4 rows in set (0.00 sec)