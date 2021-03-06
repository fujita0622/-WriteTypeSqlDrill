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
② age BETWEEN 20 AND 29;



[出力結果]
mysql> SELECT
    ->  * 
    -> FROM
    ->   quest
    -> WHERE
    ->   sex = '女'
    -> AND
    ->   age BETWEEN 20 AND 29;
+----+--------------+-----------------------+-----+--------------+------+---------+--------------------------------+---------------------+
| id | name         | name_kana             | sex | prefecture   | age  | answer1 | answer2                        | answered            |
+----+--------------+-----------------------+-----+--------------+------+---------+--------------------------------+---------------------+
|  2 | 井上茉莉     | イノウエマリ          | 女  | 神奈川県     |   25 |       2 | 面白いです。                   | 2012-10-16 07:15:14 |
|  3 | 上原遥       | ウエハラハルカ        | 女  | 茨城県       |   26 |       1 | ちょっと難しいです。           | 2012-10-18 20:11:12 |
+----+--------------+-----------------------+-----+--------------+------+---------+--------------------------------+---------------------+
2 rows in set (0.01 sec)