1-5 問5 以下は書籍情報テーブル(books)から名前が「社」で終わる出版社の情報だけを取り出すSQL命令ですが、2点誤りがあります。誤りを指摘しなさい。

SELECT 
  title, 
FROM
  books 
WHERE
  publish LIKE '_社'
;


[回答]
1. 列名が一つだけの場合は末尾に「,」はつけない
2. 「_」のワイルドカードだと任意の1文字のみのマッチングなので、正しくは任意の0文字以上をマッチングさせる「%」