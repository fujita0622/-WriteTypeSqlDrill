4-4 問4 以下は、アクセス記録テーブル(access_log)に対して、既存のreferer列の定義を「データ型VARCHAR(200)、NULL値を許可」で置き換えるためのSQL命令ですが、2点誤りがあります。誤りを指摘してください。

ALTER TABLE
  access_log
MODIFY WITH
 referer, VARCHAR(200), NULL
;

[回答]
1. MODIFY句のあとに「WITH」はつけない
2. 列名とデータ型、列フラグはカンマで区切らない