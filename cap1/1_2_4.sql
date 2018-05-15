1-2 問4 以下は、書籍情報テーブル(books)からtitle列とpublish列とを取り出すためのSQL命令ですが、2点誤りがあります。誤りを指摘しなさい。

SELECTS
  title
  publish 
FROM 
books
;

[回答]
1. 複数の列を取り出す場合でも「SELECTS」ではなく「SELECT」
2. 列名を複数記述する場合は下記のように間に「,」をつける
　　title, publish