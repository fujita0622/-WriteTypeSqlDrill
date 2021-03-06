3-8 問4 貸出記録テーブル(rental)上、returned列が9(紛失)であるレコードについて、対応する書籍情報テーブル(books)上の書籍情報を削除してみましょう。

[回答]
-- DELETE命令で書籍情報テーブル(books)のデータを削除
DELETE FROM
  books
WHERE
-- 削除条件
-- booksテーブルのisbn列とサブクエリで取得したrentalテーブルのisbn列で一致したレコードのみ
  isbn IN
  (
-- サブクエリ
-- 貸出記録テーブル(rental)からisbn列を取得
    SELECT
      isbn
    FROM
      rental
-- 取得条件
-- returned列の値が'9'のレコードのみ
    WHERE
      returned = 9
  )
;


[出力結果]
DELETE 2

       isbn        |         title          | price |   publish    | publish_date | category_id 
-------------------+------------------------+-------+--------------+--------------+-------------
 4-7981-0959-2     | PEAR入門PHP            |  2760 | 翔泳社       | 2012-09-08   | P1111
 4-7980-0945-8     | PHP5サンプル集PHP      |  2760 | 秀和システム | 2012-11-01   | P1111
 4-7981-0722-0     | XML辞典XML             |  3036 | 翔泳社       | 2011-09-16   | X3333
 4-7980-0522-3     | JSPリファレンスJava    |  1656 | 秀和システム | 2010-04-19   | J4444
 4-0010-0000-4     | フェレットの観察未分類 |   920 | WINGS出版    | 2012-10-26   | Z9999
 4-0010-0000-9     | SQL入門SQL             |  5060 | WINGS出版    | 2012-10-30   | S2222
 4-0010-0000-1     | PHPドリルPHP           |  4692 | WINGS出版    | 2013-01-14   | P1111
 4-0010-0000-5     | らくだの観察日記未分類 |  1012 | WINGS出版    | 2012-12-24   | Z9999
 4-0010-0000-6     | あひるの観察日記       |   644 | WINGS出版    | 2012-11-15   | A9999
 4-0010-0000-7     | かえるの観察日記       |   736 | WINGS出版    | 2013-01-15   | H9999
 4-8833-0000-1     | SQLリファレンスSQL     |  2277 | 日経BP       | 2013-02-15   | S2222
 4-8833-0000-3     | XMLリファレンスXML     |  2914 | 日経BP       | 2012-11-24   | X3333
 4-8833-0000-4     | SQLミニ                |   911 | 日経BP       | 2011-03-22   | s2222
(13 rows)