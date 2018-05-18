2-6 問1 アンケート回答テーブル(quest)と社員テーブル(employee)から女性の名前(カナ)だけ、氏（カナ）・名（カナ）昇順で取り出してみましょう。
なお、重複データがあっても、そのまま出力するものとします。
以下の空欄を埋めて、SQL命令を完成させなさい。

SELECT
  q.name_kana
FROM 
  quest AS q
WHERE
  ①
②
SELECT
  ③
FROM
  employee AS e
WHERE
  e.sex = 2
ORDER BY
  ④
;


[回答]
① q.sex = '女'
② UNION ALL
③ e.l_name_kana || e.f_name_kana
④ 1 ASC


[出力結果]
   name_kana    
----------------
 オノヒロミ
 ノガミリエ
 ヤマダナミ
 イノウエマリ
 サトウトモコ
 シミズハルコ
 タナカマユコ
 チカダアキコ
 ツムラカズミ
 トガワヨシミ
 ネギシアユミ
 ウエハラハルカ
 エモトシュウコ
 カワグチユウコ
 ナカザワヤスヨ
(15 rows)