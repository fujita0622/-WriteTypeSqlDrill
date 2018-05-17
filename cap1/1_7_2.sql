1-7 問2 ユーザテーブル(usr)から東京都、千葉県、神奈川県に住んでいる人のリストを姓（カナ）、名(カナ)について昇順でリストしてみましょう。取り出す列は,l_name,f_name,prefecture列とします。

SELECT
  l_name,
  f_name, 
  prefecture
FROM
  usr
WHERE
  ①
ORDER BY
  ②
  f_name_kana ASC
;


[回答]
① prefecture IN ('東京都','千葉県','神奈川県')
② l_name_kana ASC,


[出力結果]
SELECT l_name, f_name, prefecture FROM usr WHERE prefecture IN ('東京都','千葉県','神奈川県') ORDER BY l_name_kana ASC,f_name_kana ASC;
+-----------+-----------+--------------+
| l_name    | f_name    | prefecture   |
+-----------+-----------+--------------+
| 有木      | 茉莉      | 神奈川県     |
| 井上      | 一郎      | 千葉県       |
| 上原      | 幸一      | 神奈川県     |
| 小野      | 雄二      | 東京都       |
| 河合      | 泰治      | 神奈川県     |
| 久保田    | 守        | 千葉県       |
| 松本      | 博美      | 神奈川県     |
| 村井      | 佐知子    | 千葉県       |
| 矢口      | 亜由美    | 千葉県       |
| 山田      | 太郎      | 東京都       |
| 和田      | 修子      | 東京都       |
+-----------+-----------+--------------+
11 rows in set (0.00 sec)