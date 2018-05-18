4-2 問1 貸出記録テーブル(rental)上に貸出日をキーにしたインデックスを作成してみましょう。
以下の空欄を埋めて、SQL命令を完成させなさい。

①
  ind_rental
②
  rental
  (
    ③
  )


[回答]
① CREATE INDEX
② ON
③ rental_date


[出力結果]
CREATE INDEX

postgres=# \di ind_rental
                List of relations
 Schema |    Name    | Type  |  Owner   | Table  
--------+------------+-------+----------+--------
 public | ind_rental | index | syuntaro | rental
(1 row)