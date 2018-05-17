1-12 問5 以下は、社員テーブル(employee)から所属部署ごとの女性の人数を求め、3人以上の部署だけを出力するためのSQL命令ですが、2点誤りがあります。誤りを指摘しなさい。
※ sex列の値2は女

SELECT 
  depart_id,
  COUNT(*) 
FROM
  employee
WHERE
  sex = 2 
ORDER BY 
  depart_id 
WHERE
  COUNT(*) >= 3
;


[回答]
1. 集計関数をつかっており、なおかつ、並び替えはないので「ORDER BY」ではなく「GROUP BY」
2. グルーピングの結果から条件を絞りたい場合は「WHERE」ではなく「HAVING」