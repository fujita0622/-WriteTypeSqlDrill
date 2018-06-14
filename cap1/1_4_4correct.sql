1-4 問4 アンケート回答テーブル(quest)から年齢(age列)が30歳以上40歳未満の人の回答のみ抜き出しましょう。取り出す列は、name, sex, prefecture列とします。


[回答]
-- questテーブルからname, sex, prefecture列をWHERE句と比較演算子BETWEENで30以上40未満に絞り取得
SELECT name, sex, prefecture FROM quest WHERE age BETWEEN 30 and 39;


[出力結果]
mysql> SELECT name, sex, prefecture FROM quest WHERE age BETWEEN 30 and 39;
+-----------------+-----+--------------+
| name            | sex | prefecture   |
+-----------------+-----+--------------+
| 山田太郎        | 男  | 東京都       |
| 江本修子        | 女  | 東京都       |
| 有木守          | 男  | 千葉県       |
| 南幸一          | 男  | 神奈川県     |
| 根岸亜由美      | 女  | 千葉県       |
+-----------------+-----+--------------+
5 rows in set (0.02 sec)