1-6 問1 アンケート回答テーブル(quest)から性別が女であり、かつ、年齢が20歳代である回答者の情報だけを取り出してみましょう。取り出す列は、全列とします。

SELECT
 * 
FROM
  quest
WHERE
  ①
AND
  ②
;


[回答]
① sex = '女'
② age >= '20'

[出力結果]
mysql> SELECT * FROM quest WHERE sex = '女' AND age >= '20';
+----+-----------------+-----------------------+-----+--------------+------+---------+--------------------------------------+---------------------+
| id | name            | name_kana             | sex | prefecture   | age  | answer1 | answer2                              | answered            |
+----+-----------------+-----------------------+-----+--------------+------+---------+--------------------------------------+---------------------+
|  2 | 井上茉莉        | イノウエマリ          | 女  | 神奈川県     |   25 |       2 | 面白いです。                         | 2012-10-16 07:15:14 |
|  3 | 上原遥          | ウエハラハルカ        | 女  | 茨城県       |   26 |       1 | ちょっと難しいです。                 | 2012-10-18 20:11:12 |
|  4 | 江本修子        | エモトシュウコ        | 女  | 東京都       |   32 |       3 | 次回作に期待しています。             | 2012-10-24 21:14:18 |
|  5 | 小野博美        | オノヒロミ            | 女  | 神奈川県     |   40 |       2 | わかりやすいです。                   | 2012-10-29 21:18:17 |
| 16 | 根岸亜由美      | ネギシアユミ          | 女  | 千葉県       |   34 |       3 | 絵がかわいい。                       | 2013-02-03 21:11:17 |
+----+-----------------+-----------------------+-----+--------------+------+---------+--------------------------------------+---------------------+
5 rows in set (0.01 sec)
