1-10 問5 以下は、アンケート回答テーブル(quest)から都道府県、性別ごとの評価平均を求めるためのSQL命令ですが、2点誤りがあります。誤りを指摘しなさい。

SELECT 
  prefecture,
  sex,
  age,
  AVG(answer1) IS 評価平均
FROM 
  quest
GROUP BY
  prefecture,
  sex
;


[回答]
1. 問題には年齢を取得するという記述がないのでSELECT構文に設定されている「age」はいらない
2. 列名に別名をつけるには「IS」ではなく「AS」