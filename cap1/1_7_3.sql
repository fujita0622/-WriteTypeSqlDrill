1-7 問3 貸出記録テーブル(rental)から未返却で、貸出日が2012年12月1日より前の貸出情報を、貸出日が新しい順に抽出してみましょう。抽出する対象列は、全列とします。
※returned列のカラム値が 0 だと未返却


[回答]
-- rentalテーブルから全列をORDER BY句を「DESC」に指定し降順で取得
-- 取得条件:
-- 未返却（returned = '0'）で2012年12月1日より前のもの（rental_date <= '2012-12-01')のみ

SELECT * FROM rental WHERE returned = '0' AND rental_date <= '2012-12-01' ORDER BY rental_date DESC;


[出力結果]
mysql> SELECT * FROM rental WHERE returned = '0' AND rental_date <= '2012-12-01' ORDER BY rental_date DESC;
+----+---------+---------------+-------------+----------+
| id | user_id | isbn          | rental_date | returned |
+----+---------+---------------+-------------+----------+
| 14 | A200405 | 4-0010-0000-0 | 2012-06-14  |        0 |
| 10 | B200504 | 4-0010-0000-0 | 2012-03-20  |        0 |
| 12 | A200402 | 4-8833-0000-2 | 2012-02-22  |        0 |
+----+---------+---------------+-------------+----------+
3 rows in set (0.00 sec)