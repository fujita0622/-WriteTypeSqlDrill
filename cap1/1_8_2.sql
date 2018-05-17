1-8 問2 アンケート回答テーブル(quest)から回答日時が新しいものを先頭から10件取り出してみましょう。以下空欄を埋めて、SQL命令を完成させなさい。取得列はname,answer1,answer2列とします。

SELECT
  name, 
  answer1, 
  answer2 
FROM
  quest
ORDER BY
  ① 
LIMIT 
  ②, 10
;


[回答]
① answered DESC
② 0


[出力結果]
mysql> SELECT name, answer1, answer2 FROM quest ORDER BY answered DESC LIMIT 0, 10;
+-----------------+---------+--------------------------+
| name            | answer1 | answer2                  |
+-----------------+---------+--------------------------+
| 根岸亜由美      |       3 | 絵がかわいい。           |
| 西島泰治        |       3 | 読みやすいです。         |
| 森本雄二        |       1 | NULL                     |
| 村井聡          |       3 | 文字が小さい。           |
| 南幸一          |       2 |                          |
| 清水一郎        |       2 | NULL                     |
| 和田駿          |       1 | NULL                     |
| 吉岡毅          |       3 | NULL                     |
| 有木守          |       3 | 買ってよかった。         |
| 矢口一樹        |       2 | NULL                     |
+-----------------+---------+--------------------------+
10 rows in set (0.00 sec)