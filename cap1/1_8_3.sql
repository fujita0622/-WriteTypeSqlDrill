1-8 問3 貸出記録テーブル(rental)から未返却のもので、貸出日が古いものを先頭から5件抽出してみましょう。抽出する対象列は、user_id,isbn,rental_date列とします。
※returned列のカラム値が 0 だと未返却

[回答]
-- rentalテーブルからuser_id, isbn, rental_date列を貸出日(rental_date列)が古い順(ORDER BY句をASCに設定)で取得
-- 取得条件:returned列の値が0(未返却)のレコードのみをLIMIT句で0番目(先頭)から5件取得
SELECT user_id, isbn, rental_date FROM rental WHERE returned = '0' ORDER BY rental_date ASC LIMIT 0, 5;


[出力結果]
mysql> SELECT user_id, isbn, rental_date FROM rental WHERE returned = '0' ORDER BY rental_date ASC LIMIT 0, 5;
+---------+---------------+-------------+
| user_id | isbn          | rental_date |
+---------+---------------+-------------+
| A200402 | 4-8833-0000-2 | 2012-02-22  |
| B200504 | 4-0010-0000-0 | 2012-03-20  |
| A200405 | 4-0010-0000-0 | 2012-06-14  |
| B200404 | 4-8833-0000-2 | 2012-12-10  |
| A200405 | 4-8833-0000-3 | 2012-12-22  |
+---------+---------------+-------------+
5 rows in set (0.00 sec)