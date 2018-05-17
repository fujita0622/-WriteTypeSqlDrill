1-8 問4 以下は、アクセス記録テーブル(access_log)からアクセス日時の新しい順に10件のログデータを取得するためのSQL命令です（取得列はpage_id,referer,ip_address）が、2点誤りがあります。誤りを指摘しなさい。

SELECT 
  page_id,
  referer,
  ip_address
FROM
  access_log
ORDER BY
  access_date ASC
LIMIT
 10, 0
;


[回答]
1. アクセス日時の新しい順に並べるので「ASC」ではなく「DESC」
2. 「LIMIT 10, 0」だと10件目から0件取得となってしまうので、正しくは「LIMIT 0, 10」