3-2 問3 著者情報テーブル(author)に対して、以下のデータを挿入するためのSQL命令の記述してみましょう。

項目/値
著者ID/U0001
著者名/内田幸子
著者名（カナ）/ウチダサチコ
生年月日/1973-04-10


[回答]
-- INSERT命令で著者情報テーブル(author)にデータを挿入
INSERT INTO
  author
-- データを挿入する列
-- author_id,name,name_kana,birth
  (
    author_id,
    name,
    name_kana,
    birth
  )
-- 列に挿入するデータ
-- 上記指定順に下記データを挿入
-- 'U0001','内田幸子','ウチダサチコ','1973-04-10'
VALUES
(
'U0001',
'内田幸子',
'ウチダサチコ',
'1973-04-10'
)
;


[出力結果]
INSERT 0 1

 author_id |   name   |   name_kana    |   birth    
-----------+----------+----------------+------------
 Y0001     | 山田愛子 | ヤマダアイコ   | 1970-04-06
 S0001     | 佐藤一郎 | サトウイチロウ | 1973-05-06
 T0001     | 田中太郎 | タナカタロウ   | 1975-11-01
 M0001     | 守口靖男 | モリグチヤスオ | 1980-12-16
 Y0002     | 山田祥寛 | ヤマダヨシヒロ | 1960-12-04
 A0001     | 有吉晴美 | アリヨシハルミ | 1985-02-15
 K0001     | 川中智樹 | カワナカトモキ | 1986-03-12
 I0001     | 井田健二 | イダケンジ     | 
 U0001     | 内田幸子 | ウチダサチコ   | 1973-04-10
(9 rows)