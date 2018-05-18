3-7 問2 アクセス記録テーブル(access_log)からアクセス日時が2012年06月01日より前か、リンク元のURLが空である情報を削除しましょう。
空欄を埋めて、正しいSQL命令を完成させてください。

DELETE FROM
  ①
WHERE
  ②
;


[回答]
① access_log
② access_date <= '2012-06-01 00:00:00'
OR
  referer IS NULL
AND 
  referer = ''


[出力結果]
DELETE 13

workbook=# SELECT * FROM 
workbook-#   access_log 
workbook-# WHERE
workbook-# access_date <= '2012-06-01 00:00:00'
workbook-# OR
workbook-#   referer IS NULL
workbook-# AND 
workbook-#   referer = '';
 log_id | page_id | referer | ip_address | access_date 
--------+---------+---------+------------+-------------
(0 rows)