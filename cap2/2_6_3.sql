2-6 問3 ユーザテーブル(usr)とアンケート回答テーブル(quest)からそれぞれ千葉県に住んでいる人間だけ取り出し、結果を結合してみましょう。
その際、重複データを取り除くものとし、かつ、氏名(カナ)について降順で並び替えるものとします。


[回答]
SELECT
-- ユーザテーブル(usr)から氏名[カナ](l_name_kana,f_name_kana列)を取得
-- l_name_kana,f_name_kanaは「||」で文字列結合
  u.l_name_kana || u.f_name_kana
FROM
  usr AS u
-- 取得条件
-- 都道府県(prefecture列)が'千葉県'のレコードのみ
WHERE
  u.prefecture = '千葉県'
-- UNION句で上記SELECT文の結果の列に下記SELECT文の結果の列を結合する
UNION
-- アンケート回答テーブル(quest)から氏名[カナ](name_kana列)を取得
SELECT
  q.name_kana
FROM
  quest AS q
-- 取得条件
-- 都道府県(prefecture列)が'千葉県'のレコードのみ
WHERE 
  q.prefecture = '千葉県'
-- 並替条件
-- 1(先頭の結果の列)を降順(DESC)
ORDER BY 
  1 DESC
;


[出力結果]
     ?column?     
------------------
 イノウエイチロウ
 ヤグチアユミ
 ムライサチコ
 ネギシアユミ
 クボタマモル
 アリキマモル
(6 rows)