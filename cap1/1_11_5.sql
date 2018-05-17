1-11 問5 以下は、社員テーブル(employee)から部署、役職ごとに降順ソートした結果を出力するためのSQL命令ですが、2点誤りがあります。誤りを指摘しなさい。


SELECT
  depart_id,
  class,
  CONCAT('l_name' , 'f_name') AS 指名
FROM
  employee
ORDER BY
  depart_id,
  class DESC
;


[回答]
1. CONCAT関数で列名を設定する時はシングルコーテーションで囲まないで指定するので「('l_name' , 'f_name')」は「(l_name , f_name)」
2. ORDER BY句は列名ごとに並び順を指定しなければならないので「depart_id, class DESC」は「depart_id DESC, class DESC」