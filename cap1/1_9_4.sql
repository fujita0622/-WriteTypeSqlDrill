1-9 問4 以下は、書籍情報テーブル(books)で、出版社ごとの書籍価格の最大値をもとめてみましょう。


[回答]
-- booksテーブルからpublish列と集計関数MAXでprice列の最大値をpublish列をグループ化して取得
SELECT publish, MAX(price) FROM books GROUP BY publish;


[出力結果]
mysql> SELECT publish, MAX(price) FROM books GROUP BY publish;
+--------------------+------------+
| publish            | MAX(price) |
+--------------------+------------+
| 山田出版           |       5500 |
| 秀和システム       |       3000 |
| 日経BP             |       3200 |
| 翔泳社             |       3300 |
+--------------------+------------+
4 rows in set (0.00 sec)