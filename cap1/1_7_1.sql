1-7 問1 書籍情報テーブル(books)から価格が2500〜3500円の範囲の書籍を価格が安い順に取り出してみましょう。取り出す列は、title, price列とします。

SELECT 
  title, 
  price 
FROM
  books 
WHERE
  ①
ORDER BY
  ②
;


[回答]
① price BETWEEN 2500 AND 3500
② price ASC


[出力結果]
mysql> SELECT title, price FROM books WHERE price BETWEEN 2500 AND 3500 ORDER BY price ASC;
+-----------------------+-------+
| title                 | price |
+-----------------------+-------+
| SQLリファレンス       |  2500 |
| PHP5サンプル集        |  3000 |
| PEAR入門              |  3000 |
| XMLリファレンス       |  3200 |
| XML辞典               |  3300 |
+-----------------------+-------+
5 rows in set (0.00 sec)