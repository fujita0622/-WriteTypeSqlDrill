3-4 問5 アンケート回答テーブル(quest)に「男性」「女性」「男」「女」という表記に統一したいと思います。
以下のSQL命令の記述してみましたが、誤りがあり、正常に動作しません。誤りを2点、指摘してみましょう。


UPDATE INTO
  quest
VALUES
  sex = REPLACE(sex, '性','')
;


[回答]
1.UPDATE命令に「INTO」はつけない
2.UPDATE命令の場合変更する値は「VALUES」ではなく「SET」の配下に記述する