1-8 問1 書籍情報テーブル(books)から刊行日が新しいものを3件目から5件分だけ取り出してみましょう。取り出す列は、title, publish_date列とします。以下の空欄を埋めてSQL命令を完成させてください。

SELECT 
  title,
  publish_date 
FROM
  books
① 
  publish_date DESC
LIMIT
  ②
;


[回答]
① ORDER BY
② 2, 5


[出力結果]
mysql> SELECT title, publish_date FROM books ORDER BY publish_date DESC LIMIT 2, 5;
+--------------------------+--------------+
| title                    | publish_date |
+--------------------------+--------------+
| PHPドリル                | 2013-01-14   |
| らくだの観察日記         | 2012-12-24   |
| XMLリファレンス          | 2012-11-24   |
| あひるの観察日記         | 2012-11-15   |
| PHP5サンプル集           | 2012-11-01   |
+--------------------------+--------------+
5 rows in set (0.00 sec)