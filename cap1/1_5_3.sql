1-5 問3 書籍情報テーブル(books)から書名が「SQL〇〇」(◯は1文字)である書籍の情報を取り出してみましょう。取り出す列は、isbn,title,price列とします。

[回答]
-- booksテーブルからisbn, title, price列を取得
-- 取得条件：title列
--          「LIKE 'SQL%'」で「SQL◯◯」のような前方一致条件に指定
SELECT isbn, title, price FROM books WHERE title LIKE 'SQL%';


[出力結果]
mysql> SELECT isbn,title,price FROM books WHERE title LIKE 'SQL%';
+---------------+-----------------------+-------+
| isbn          | title                 | price |
+---------------+-----------------------+-------+
| 4-0010-0000-9 | SQL入門               |  5500 |
| 4-8833-0000-1 | SQLリファレンス       |  2500 |
| 4-8833-0000-2 | SQLプチブック         |  1600 |
+---------------+-----------------------+-------+
3 rows in set (0.00 sec)