3-2 問1 社員テーブル(employee)から役職が主任、担当、アシスタントである社員のコードを取り出して、タイムカードテーブル(time_card)に挿入してみましょう。
その際、日付列には今日の日付を、勤務時間列には固定値で0をセットするものとします。

INSERT INTO
  time_card
  (
    s_id,
    r_date,
    work_time
  )
  ①
  s_id,
  CURRENT_DATE,
  0
  FROM
    employee
  WHERE
  ②
;


[回答]
① SELECT
② class IN ('主任', '担当' , 'アシスタント')


[出力結果]
INSERT 0 17