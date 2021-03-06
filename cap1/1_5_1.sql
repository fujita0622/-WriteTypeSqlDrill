1-5 問1 著者情報テーブル(author)から名前が「山田」で始まる著者情報を取り出してみましょう。取り出す対象は全列だけとします。

SELECT
  ①
FROM 
  author
WHERE
  ②
;


[回答]
① *
② name LIKE '山田%'


[出力結果]
mysql> SELECT * FROM author WHERE name LIKE '山田%';
+-----------+--------------+-----------------------+------------+
| author_id | name         | name_kana             | birth      |
+-----------+--------------+-----------------------+------------+
| Y0001     | 山田愛子     | ヤマダアイコ          | 1970-04-06 |
| Y0002     | 山田祥寛     | ヤマダヨシヒロ        | 1960-12-04 |
+-----------+--------------+-----------------------+------------+
2 rows in set (0.01 sec)
