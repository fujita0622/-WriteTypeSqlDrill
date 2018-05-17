1-9 問5 以下は、アクセス記録テーブル(access_log)からメニューコード別のアクセス数を取得するためのSQL命令ですが、2点誤りがあります。誤りを指摘しなさい。

SELECT
  page_id, SUM(*)
FROM
  access_log
ORDER BY
  page_id
;


[回答]
1. 合計値ではなくメニューコード別のアクセス数を取得したいので「SUM」ではなく「COUNT」
2. 「ORDER BY」は並び順の前置句なので、正しくは「GROUP BY」