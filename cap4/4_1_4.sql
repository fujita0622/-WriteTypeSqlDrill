4-1 問4 書籍情報テーブル(books)を新規に作成してみましょう。


[回答]
-- CREATE命令でbooksテーブルを作成
CREATE TABLE
  books
-- ()内にテーブル構造を定義
  (
-- isbn列, 文字列型 - 固定長文字列(17文字) , 値のNULLを拒否, 主キー設定
    isbn CHAR(17) NOT NULL PRIMARY KEY,
-- title列, 文字列型 - 可変長文字列(255文字)
    title VARCHAR(255),
-- price列, 整数型
    price INT,
-- publish列, 文字列型 - 可変長文字列(30文字)
    publish VARCHAR(30),
-- publish_date列, 日付型 フォーマット:YYYY-MM-DD'
    publish_date DATE,
-- category_id列, 文字列型 - 固定長文字列(5文字)
    category_id CHAR(5)
  )
;


[出力結果]
CREATE TABLE

workbook=# \d books;
                          Table "public.books"
    Column    |          Type          | Collation | Nullable | Default 
--------------+------------------------+-----------+----------+---------
 isbn         | character(17)          |           | not null | 
 title        | character varying(255) |           |          | 
 price        | integer                |           |          | 
 publish      | character varying(30)  |           |          | 
 publish_date | date                   |           |          | 
 category_id  | character(5)           |           |          | 
Indexes:
    "books_pkey" PRIMARY KEY, btree (isbn)