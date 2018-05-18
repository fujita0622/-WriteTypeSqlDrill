4-1 問5 以下は、貸出記録テーブル(rental)を新規に作成するためのSQL命令ですが、誤りが2点あります。誤りを指摘してください。

CREATE TABLE INTO
  rental
  (
    id INT AUTO_INCREMENT, PRIMARY KEY,
    user_id CHAR(7),
    isbn CHAR(13),
    rental_date DATE,
    returned SMALLINT DEFAULT 0
  )
;


[回答]
1. CREATE TABLE構文に「INTO」はつけない
2. 1つの列に複数列フラグを指定する場合は列フラグをカンマで区切らず半角スペースをあける