1-4 問2 書籍情報テーブル(books)から出版社が「日経BP」「翔泳社」である書籍情報だけを取り出してみましょう。取り出す列はibsn, title, publish列とします。

SELECT
  isbn,
  title,
  publish 
FROM
  ①
WHERE
  publish ② ('日経BP', '翔泳社')
;


[回答]
① books
② IN


[出力結果]
mysql> SELECT isbn, title, publish FROM books WHERE publish IN ('日経BP', '翔泳社');
+---------------+-----------------------+-----------+
| isbn          | title                 | publish   |
+---------------+-----------------------+-----------+
| 4-7981-0722-0 | XML辞典               | 翔泳社    |
| 4-7981-0959-2 | PEAR入門              | 翔泳社    |
| 4-8833-0000-1 | SQLリファレンス       | 日経BP    |
| 4-8833-0000-2 | SQLプチブック         | 日経BP    |
| 4-8833-0000-3 | XMLリファレンス       | 日経BP    |
+---------------+-----------------------+-----------+
5 rows in set (0.01 sec)