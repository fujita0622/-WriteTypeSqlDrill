1-3 問4 以下は、社員テーブル(employee)から重複無しの役職を取り出すSQL命令ですが、2点誤りがあります。誤りを指摘しなさい。

SELECT ALL
  class,
  depart_id
FROM
  employee
;


[回答]
1. 重複を取り除くには「ALL」ではなく「DISTINCT」
2. 役職だけなので列名「depart_id」はいらない