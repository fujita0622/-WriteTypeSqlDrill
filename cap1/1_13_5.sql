1-13 問5 以下は、社長(employee)テーブルから社員名(氏+名を連結させたもの)、役職クラス（部長、課長は管理職、主任、担当は総合職、アシスタントは一般職とします）を出力するためのSQL命令ですが、2つ誤りがあります。誤りを指摘してください。
SELECT CONCAT(l_name, f_name),
  CASE
    WHERE class IN ('部長', '課長') THEN '管理職'
    WHERE class IN ('主任', '担当') THEN '総合職'
    ELSE THEN '一般職'
  END AS 役職クラス
FROM employee;


[回答]
1. CASE句の分岐条件の前置句は「WHERE」ではなく「WHEN」
2. ELSE句は値の前に「THEN」をつけない