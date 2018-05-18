3-4 問5 以下は、社員テーブル(employee)のdepart_id列の後方に「email列(VARCHAR(255)型」を追加するSQL命令ですが、2点誤りがあります。誤りを指摘してください。

ALTER TABLE
  employee
ADD TO
  email VARCHAR(255) NOT NULL
BEFORE
  depart_id
;

[回答]
1. ADD句のあとに「TO」
2. 列を追加する位置を指定するのはAFTER句なので「BEFORE」ではない