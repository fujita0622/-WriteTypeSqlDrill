3-2 問4 以下は、社員テーブル(employee)に対して、表のデータを挿入するためのSQL命令ですが、2点誤りがあります。誤りを指摘してください。

項目/値
社員コード/WA00001
社員名(氏)/和田
所属部署名/J01
最終更新日/(今日の日付)


INSERT INTO
  employee
  (
    s_id
    l_name
    depart_id
    last_update
  )
VALUE
  (
  'WA00001',
  '和田',
  'J01',
  CURRENT_DATE
)
;


[回答]
1. 複数列を指定する場合は列名をカンマで区切る
2. 値の挿入は「VALUE」ではなく「VALUES」の配下に設定する