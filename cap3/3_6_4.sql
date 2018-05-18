3-6 問4 貸出記録テーブル(rental)上、returned列9(紛失)であるレコードについて、対応する書籍情報テーブル(books)上の分類IDを「XXXX」(その他)に更新してみましょう。


[回答]
-- UPDATE命令で書籍情報テーブル(books)を更新
UPDATE
  books
SET
-- 更新内容
-- category_id列の値を'XXXX'に更新
  category_id = 'XXXX'
WHERE
-- 更新条件
-- booksテーブルのisbn列とサブクエリで取得したrentalテーブルのisbn列が一致するレコードのみ
  isbn IN 
-- サブクエリ
-- rentalテーブルからのisbn列を取得
  (
  SELECT
    isbn
  FROM
    rental
-- 取得条件
--  returned列の値が'9'のレコードのみ
  WHERE
    returned = 9
  )
;


[出力結果]
UPDATE 2

workbook=# select * from books where category_id = 'XXXX';
       isbn        |         title          | price |  publish  | publish_date | category_id 
-------------------+------------------------+-------+-----------+--------------+-------------
 4-0010-0000-0     | ハムスターの観察未分類 |   828 | WINGS出版 | 2010-11-01   | XXXX 
 4-8833-0000-2     | SQLプチブックSQL       |  1457 | 日経BP    | 2010-11-30   | XXXX 
(2 rows)