2-1 問4 貸出記録テーブル(rental)とユーザテーブル(usr)からそれぞれのユーザについて、現在何冊を貸出ているかを、貸出数の多い順に取得しましょう。
取得列は、ユーザの氏名、貸出数とします。貸出数0のユーザは出力する必要はありません。

[回答]
-- usrテーブルの氏名(l_name,f_name)と利用者(rentalテーブルのuser_id)ごとのカウント数を取得
-- ASキーワードでusrテーブルに'u'、rentalテーブルに'r'と別名をつける
SELECT 
  u.l_name,
  u.f_name,
  COUNT(r.user_id)
FROM 
  usr AS u
INNER JOIN 
  rental AS r
ON 
-- 結合するキー
-- usrテーブルの利用者コード(user_id)とrentalテーブルの利用者コード(user_id)
  u.user_id = r.user_id
WHERE 
-- 取得条件
-- rentalテーブルの貸出状況(returned)が0(貸出中)のとき
  r.returned = 0
-- u.l_name, u.f_name, r.user_id列をグループ化
GROUP BY
  u.l_name, u.f_name, r.user_id
-- 利用者(user_id)ごとの貸出数が多い順(DESC)
ORDER BY 
  COUNT(r.user_id) DESC;


[出力結果]
 l_name | f_name | count 
--------+--------+-------
 河合   | 泰治   |     2
 西島   | 文子   |     2
 和田   | 修子   |     1
 松本   | 博美   |     1
 上原   | 幸一   |     1
 森本   | 絵里   |     1
 根岸   | 裕子   |     1
 吉岡   | 遥     |     1
(8 rows)