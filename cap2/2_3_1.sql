2-3 問1 書籍目次テーブル(contents)から現在のコンテンツコードと前のコンテンツコードを、現在のコンテンツコードについて昇順で取り出してみましょう。以下の空欄を埋めて、SQL命令を完成させなさい。

SELECT 
  cp.c_id AS 前のページ
  cn.c_id AS 現在のページ
FROM
  ①
INNER JOIN
  contents AS cn
ON 
  ②
ORDER BY
  ③
;


[回答]
① contents AS cp
② cp.next_id = cn.c_id
③ cp.next_id ASC


[出力結果]
 前のページ | 現在のページ 
------------+--------------
 A001       | A011
 A011       | A012
 A012       | A013
 A013       | A014
 A014       | A015
 A015       | A016
 A016       | A017
 A017       | A021
 A021       | A022
 A022       | A023
 A023       | A024
 A024       | A025
 A025       | A026
 A026       | A027
 A027       | A028
 A028       | A029
 A029       | A031
 A031       | A032
 A032       | A033
 A033       | A034
 A034       | A035
 A035       | A036
 A036       | A037
 A037       | A041
 A041       | A042
 A042       | A043
 A043       | A044
 A044       | A045
 A045       | A046