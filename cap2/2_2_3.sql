2-2 問3 書籍情報テーブル(books)と貸出記録テーブル(rental)とを統合し、書籍ごとの貸出数累計を、累計数が多い順に出力してみましょう。
その際、貸出履歴が1回もない書籍についても出力する


[回答]
-- booksテーブルのtitle列とrentalテーブルのISBNコード(isbn)ごとのカウント数を取得
SELECT 
  b.title,
  COUNT(r.isbn)
-- 統合条件
-- LEFT JOIN句でbooksテーブルとrentalテーブルを左外部結合
-- ASキーワードでbooksテーブルは'b'、rentalテーブルは'r'と別名をつける
FROM 
  books AS b
LEFT JOIN
  rental AS r
-- 統合するキー
-- booksテーブルのISBNコード(isbn)とrentalテーブルのISBNコード(isbn)
ON
  b.isbn = r.isbn
-- booksテーブルのtitle列をグループ化
GROUP BY 
  b.title
-- 並替条件
-- rentalテーブルのISBNコード(isbn)ごとのカウント数が多い順(DESC)
ORDER BY
  COUNT(r.isbn) DESC
;


[出力結果]
      title       | count 
------------------+-------
 SQLプチブック    |    12
 ハムスターの観察 |     5
 PEAR入門         |     1
 PHP5サンプル集   |     1
 XMLリファレンス  |     1
 JSPリファレンス  |     1
 XML辞典          |     1
 PHPドリル        |     1
 SQL入門          |     1
 SQLリファレンス  |     1
 フェレットの観察 |     0
 らくだの観察日記 |     0
 かえるの観察日記 |     0
 あひるの観察日記 |     0
(14 rows)
