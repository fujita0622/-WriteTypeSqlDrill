1-4 問8 以下は書籍情報テーブル(books)から価格(price列)が5000円未満の書籍情報のみを取り出すためのSQL命令です(取り出す列はtitle,publish,price列とします)。SQL命令に含まれる誤りを2つ指摘してください。

SELECT 
  title
  publish
  price
FROM
  books
WHERE
  price <= 5000
;


[回答]
1. 「title publish price」の列名が「,」で区切られてない
2. 比較演算子の値「5000」にシングルコーテーションがない