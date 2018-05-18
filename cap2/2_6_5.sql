2-6 問5 ユーザテーブル(usr)とアンケート回答テーブル(quest)それぞれに含まれるユーザ氏名を比較し、双方に含まれるデータのみを取り出してみましょう。

[回答]
-- ユーザテーブル(usr)から氏名(l_name, u.f_name列)を取得
SELECT 
-- l_name, u.f_name列を結合
  u.l_name || u.f_name
FROM
-- ASキーワードでユーザテーブル(usr)を別名'u'とつける
  usr AS u
-- 上記と下記のSELECT文の結果からINTERSECT句で双方に含まれているデータのみ取得
INTERSECT
-- アンケート回答テーブル(quest)から氏名(name列)を取得
SELECT
  q.name
FROM
-- ASキーワードでアンケート回答テーブル(quest)を別名'q'とつける
  quest AS q
;


[出力結果]
 ?column? 
----------
 山田太郎
(1 row)