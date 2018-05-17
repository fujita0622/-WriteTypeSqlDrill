1-12 問3 著者-書籍情報テーブル(author_books)で、著者ごとの書籍数を求め、登録数が3冊以上の情報だけを取り出してみましょう。


[回答]
-- author_booksテーブルからauthor_id, グループ化したauthor_id列のカウント数を取得
-- 取得条件:
-- HAVING句でグループ化したauthor_id列のカウント数が3以上の情報だけに絞る
SELECT author_id, COUNT(*) FROM author_books GROUP BY author_id HAVING COUNT(*) >= 3;


[出力結果]
mysql> SELECT author_id, COUNT(*) FROM author_books GROUP BY author_id HAVING COUNT(*) >= 3;
+-----------+----------+
| author_id | COUNT(*) |
+-----------+----------+
| Y0002     |        4 |
+-----------+----------+
1 row in set (0.00 sec)