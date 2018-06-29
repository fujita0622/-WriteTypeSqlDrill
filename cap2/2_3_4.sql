2-3 問4 以下は、書籍目次テーブル(contents)から現在のコンテンツコードと前のコンテンツコードを、現在のコンテンツコードについて昇順で取り出すSQLですが、2つ誤りがあります。
誤りを指摘してください。

SELECT
  cp.c_id AS 前のページ,
  cn.c_id AS 現在のページ
FROM
  contents AS cp
OUTER JOIN
  contents AS cn
ON 
  cp.next_id <> cn.c_id
ORDER BY 
  cn.c_id ASC
;


[回答]
1. 結合する両方のテーブルにある情報のみ抜き出したいので「OUTER JOIN」ではなく「INNER JOIN」で内部結合する
2. 「<>」だとテーブルを統合できないので、正しくは「＝」