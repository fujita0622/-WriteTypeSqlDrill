2-5 問1 アンケート回答テーブル(quest)から回答者の平均年齢を超えている人の回答(answer1,answer2列)を評価の低い順に取り出してみましょう。

-- アンケート回答テーブル(quest)からanswer1,answer2列を取得
SELECT
  answer1,
  answer2
FROM 
  quest
WHERE
-- 取得条件
-- questテーブルの年齢(age)の値 > questテーブルの年齢(age)の平均値だけ取得
  age >
-- サブクエリ
-- questテーブルの年齢(age)の平均値を取得
  (
    SELECT
      AVG(age)
    FROM
    quest
  )
-- 並替条件
-- 評価(answer1)が低い順(ASC)
ORDER BY
  answer1 ASC
;


[出力結果]
 answer1 |      answer2       
---------+--------------------
       1 | 
       2 | 
       2 | わかりやすいです。
       2 | 
       3 | 絵がかわいい。
       3 | 買ってよかった。
       3 | 文字が小さい。
(7 rows)
