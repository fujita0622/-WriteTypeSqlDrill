1-13 問3 アクセス記録テーブル(access_log)からリンク元ごとのアクセス数を求め、10件未満を「C」10件以上50件未満を「B」、50件以上を「A」とする「ランク」列を取得してみましょう。また、データはアクセス数が3件以上のものを多い順に並べるものとします。


[回答]
SELECT 
-- FROMで指定したテーブルからreferer列と, リンク元(referer)ごとのカウント数を取得
  referer, COUNT(*), 
-- CASE句でリンク元のカウント数を下記条件分岐でランク付けする
CASE
-- カウント数が50以上の場合 'A'
  WHEN COUNT(*) >= 50 THEN 'A'
-- カウント数が10件以上50件未満の場合 'B'
  WHEN COUNT(*) >= 10 THEN 'B'
-- それ以外は'C'
  ELSE 'C'
  -- ASキーワードでランクと別名をつける
END AS ランク
FROM
  access_log
-- リンク元(referer)ごとにグループ化
GROUP BY referer 
-- HAVING句でリンク元(referer)ごとのカウント数が3未満の場合切り捨て
HAVING COUNT(*) >= 3 
-- ORDER BY句でリンク元(referer)ごとのカウント数が多い順(DESC)に並べる
ORDER BY COUNT(*) DESC
;


[出力結果]
mysql> SELECT referer, COUNT(*), 
    -> CASE
    ->   WHEN COUNT(*) >= 50 THEN 'A'
    ->   WHEN COUNT(*) >= 10 THEN 'B'
    ->   ELSE 'C'
    -> END AS ランク
    -> FROM access_log GROUP BY referer HAVING COUNT(*) >= 3 ORDER BY COUNT(*) DESC;
+---------------------------+----------+-----------+
| referer                   | COUNT(*) | ランク    |
+---------------------------+----------+-----------+
| http://wings.msn.to/hamu/ |      100 | A         |
| http://wings.msn.to/neko/ |       11 | B         |
| http://wings.msn.to/saru/ |        4 | C         |
| http://wings.msn.to/inu/  |        3 | C         |
| http://wings.msn.to/tori/ |        3 | C         |
| http://wings.msn.to/kame/ |        3 | C         |
+---------------------------+----------+-----------+
6 rows in set (0.00 sec)