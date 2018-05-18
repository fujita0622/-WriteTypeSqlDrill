3-4 問4 問1でISBNコードの先頭に付加した固定文字列「ISBN」を取り除いてみましょう。対応するためのSQL命令を記述いてください。

[回答]
-- UPDATE命令でbooksテーブルのデータを更新
UPDATE 
  books
-- SET句のあとに更新内容を記述
-- [更新内容]
-- isbn列の値の先頭についている「ISBN」をREPLACE関数で取り除く
SET
  isbn = REPLACE(isbn, 'ISBN', '')
;


[出力結果]
UPDATE 15

       isbn        |      title       | price |   publish    | publish_date | category_id 
-------------------+------------------+-------+--------------+--------------+-------------
 4-0010-0000-0     | ハムスターの観察 |   828 | 山田出版     | 2010-11-01   | Z9999
 4-7981-0959-2     | PEAR入門         |  2760 | 翔泳社       | 2012-09-08   | P1111
 4-7980-0945-8     | PHP5サンプル集   |  2760 | 秀和システム | 2012-11-01   | P1111
 4-8833-0000-1     | SQLリファレンス  |  2300 | 日経BP       | 2013-02-15   | S2222
 4-0010-0000-4     | フェレットの観察 |   920 | 山田出版     | 2012-10-26   | Z9999
 4-7981-0722-0     | XML辞典          |  3036 | 翔泳社       | 2011-09-16   | X3333
 4-7980-0522-3     | JSPリファレンス  |  1656 | 秀和システム | 2010-04-19   | J4444
 4-8833-0000-2     | SQLプチブック    |  1472 | 日経BP       | 2010-11-30   | S2222
 4-8833-0000-3     | XMLリファレンス  |  2944 | 日経BP       | 2012-11-24   | X3333
 4-0010-0000-9     | SQL入門          |  5060 | 山田出版     | 2012-10-30   | S2222
 4-0010-0000-1     | PHPドリル        |  4692 | 山田出版     | 2013-01-14   | P1111
 4-0010-0000-5     | らくだの観察日記 |  1012 | 山田出版     | 2012-12-24   | Z9999
 4-0010-0000-6     | あひるの観察日記 |   644 | 山田出版     | 2012-11-15   | A9999
 4-0010-0000-7     | かえるの観察日記 |   736 | 山田出版     | 2013-01-15   | H9999
 4-8833-0000-4     | SQLミニ          |   920 | 日経BP       | 2011-03-22   | s2222
(15 rows)