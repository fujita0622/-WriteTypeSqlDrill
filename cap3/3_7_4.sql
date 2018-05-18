3-7 問4 以下は、書籍情報テーブル(books)上で分類IDが「Z9999(未分類)」であるが、NULLである書籍を削除するSQL命令ですが、2点誤りがあります。誤りを指摘してください。

DELETE 
  books
WHERE
  category_id = 'Z9999(未分類)'
AND
  category_id IS NULL
;


[回答]
1. DELETE構文は「DELETE」のあとに「FROM」をつけ、そのあとにテーブル名を設定
2. 削除条件が片方一致なので「AND」ではなく「OR」