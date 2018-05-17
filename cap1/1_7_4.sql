1-7 問4 アクセス記録テーブル(access_log)から2013年1月分のアクセスログをreferer、ip_address列について降順で取り出すためのSQL命令ですが、2点誤りがあります。誤りを指摘しなさい。

SELECT
  *
FROM
  access_log 
WHERE 
  access_date IN ('2013-01-01', '2013-01-31')
ORDER BY 
  referer, ip_address DESC
;



[回答]
1. 範囲で条件を指定したい場合は「IN ('2013-01-01', '2013-01-31')」ではなく「BETWEEN '2013-01-01' AND '2013-01-31'」と設定する
2. 「ORDER BY referer, ip_address DESC」だと先頭の「referer」列に並び順が設定されていない