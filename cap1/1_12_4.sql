1-12 問4 書籍情報テーブル(books)から、出版社、分類IDごとに登録者数を求め、登録数が3冊未満の情報だけを取り出してみましょう。


[回答]
-- booksテーブルからpublish, category_id列とグループ化した(publish, category_id)のカウント数を取得
-- 取得条件:
-- HAVING句でグループ化したpublish, category_id列のカウント数が3未満の情報だけに絞る
SELECT publish, category_id, COUNT(*) FROM books GROUP BY publish, category_id HAVING COUNT(*) < 3;


[出力結果]
mysql> SELECT publish, category_id, COUNT(*) FROM books GROUP BY publish, category_id HAVING COUNT(*) < 3;
+--------------------+-------------+----------+
| publish            | category_id | COUNT(*) |
+--------------------+-------------+----------+
| 山田出版           | A9999       |        1 |
| 山田出版           | H9999       |        1 |
| 山田出版           | P1111       |        1 |
| 山田出版           | S2222       |        1 |
| 秀和システム       | J4444       |        1 |
| 秀和システム       | P1111       |        1 |
| 日経BP             | S2222       |        2 |
| 日経BP             | X3333       |        1 |
| 翔泳社             | P1111       |        1 |
| 翔泳社             | X3333       |        1 |
+--------------------+-------------+----------+
10 rows in set (0.00 sec)
