2-3 問2  メニューテーブル(menu)からそれぞれのメニューに対応する親メニュー名のをメニューコードについて昇順でとりだしてみましょう。
以下の空欄を埋めて、SQL命令を完成させなさい。

SELECT 
  ① AS メニュー名
  ② AS 親メニュー名
FROM
  ③ AS mc
INNER JOIN
  ③ AS mn
ON
  ④
ORDER BY
  ⑤
;


[回答]
① mc.title
② mn.title
③ menu
④ mc.parent = mn.page_id
⑤ mc.page_id ASC


[出力結果]
        メニュー名       |      親メニュー名      
------------------------+------------------------
 WINGSについて          | ホーム
 WINGSの歴史            | WINGSについて
 WINGSメンバー紹介      | WINGSについて
 WINGSメンバ募集        | WINGSについて
 技術記事オンライン公開 | ホーム
 最新インターネット記事 | 技術記事オンライン公開
 PHP関連記事            | 技術記事オンライン公開
 Java関連記事           | 技術記事オンライン公開
 ASP.NET関連記事        | 技術記事オンライン公開
 新刊案内               | ホーム
 PHP関連新刊            | 新刊案内
 Java関連新刊           | 新刊案内
 ASP.NET関連新刊        | 新刊案内
(13 rows)