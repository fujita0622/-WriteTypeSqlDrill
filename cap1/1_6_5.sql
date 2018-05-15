1-6 問5 以下は書籍情報テーブル(books)から出版社が「秀和システム」または「日経BP」であり、かつ、価格が3000円未満の書籍を取り出すためのSQL命令ですが、2点誤りがあります。誤りを指摘しなさい。

SELECT 
  isbn,
  title 
FROM
 books
WHERE
  publish = '秀和システム'
AND
  publish = '日経BP'
OR
  price < 3000
;


[回答]
1. 値の複数条件は「AND」ではできない。比較演算子「IN」をつかい「publish = '秀和システム' AND publish = '日経BP'」を「publish IN ('秀和システム','日経BP')」
2. 問題は出版社名と価格の両方一致が条件なので「OR price < 3000」の「OR」は「AND」にしなければならない
