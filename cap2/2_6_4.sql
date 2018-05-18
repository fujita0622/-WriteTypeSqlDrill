2-5 問4 著者情報テーブル(author)とユーザテーブル(usr)からそれぞれ氏名の情報を取り出す為のSQL命令ですが、2つ誤りがあります。誤りを指摘してください。
なお、統合したデータは重複を含まないものとし、結果は氏名(カナ)について降順で並び替えます。

SELECT
  a.name_kana
FROM
  author AS a
UNION ALL
SELECT
  u.l_name_kana,
  u.f_name_kana
FROM
  usr AS u
ORDER BY
  1 DESC
;


[回答]
1. 「UNION ALL」だと重複を含含んでしますので、正しくは「UNION」
2. UNION句で統合する列数は揃えなければならないので「u.l_name_kana, u.f_name_kana」部分を「u.l_name_kana || u.f_name_kana」にしてひとつにする