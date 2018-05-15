1-3 問2 アクセス記録テーブル(access_log)からリンク元URLを重複しない形式で取り出してみましょう。以下の空欄を埋めて、SQL命令を完成させてください。

①
  referer
②
  access_log
;


[回答]
① SELECT DISTINCT
② FROM


[出力結果]
mysql> select distinct referer from access_log;
+---------------------------+
| referer                   |
+---------------------------+
| http://wings.msn.to/hamu/ |
| http://wings.msn.to/neko/ |
| http://wings.msn.to/inu/  |
| http://wings.msn.to/saru/ |
| http://wings.msn.to/tori/ |
| http://wings.msn.to/kame/ |
| NULL                      |
+---------------------------+
7 rows in set (0.00 sec)