1-12 問6 アクセス記録テーブル(access_log)からアクセス日時が2013/01/01以降のものについて、リンク元URLごとにアクセス数を算出しましょう。その際、アクセス数が5件未満のもののみをアクセス数降順で出力してください。部署、役職ごとに降順ソートした結果を出力するためのSQL命令ですが、2点誤りがあります。誤りを指摘しなさい。以下の空欄を埋めて、SQL命令を完成させなさい。


SELECT 
  referer,
  ①
FROM
  access_log 
WHERE 
  ② 
GROUP BY 
  referer 
③
  ① < 5 
ORDER BY
 ① ④
;


[回答]
① COUNT(*)
② access_date >= 2013-01-01
③ HAVING
④ DESC


[出力結果]
mysql> SELECT referer, COUNT(*) FROM access_log WHERE access_date >= 2013-01-01 GROUP BY referer HAVING COUNT(*) < 5 ORDER BY COUNT(*) DESC;
+---------------------------+----------+
| referer                   | COUNT(*) |
+---------------------------+----------+
| http://wings.msn.to/saru/ |        4 |
| http://wings.msn.to/inu/  |        3 |
| http://wings.msn.to/tori/ |        3 |
| http://wings.msn.to/kame/ |        3 |
| NULL                      |        2 |
+---------------------------+----------+
5 rows in set, 1 warning (0.02 sec)

