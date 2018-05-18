2-5 問4 貸出記録テーブル(rental)上に検索し、これまでに1度も書籍の貸出を行ったことのないユーザの氏名をユーザテーブル(usr)から取り出してみましょう。


[回答]
-- ユーザテーブル(usr)から氏名(l_name,f_name)を取得
SELECT 
  l_name,
  f_name
FROM
  usr
WHERE 
  NOT EXISTS 
-- 取得条件
-- サブクエリ
-- 貸出記録テーブル(rental)から
-- ユーザテーブル(usr)のuser_id列と貸出記録テーブル(rental)user_id列の値が等しくないレコードだけ取得(NOT EXISTS句で条件に合致しないレコードを取得する)
  (
    SELECT 
      *
    FROM
      rental
    WHERE
      usr.user_id = rental.user_id
  )
;


[出力結果]
 l_name | f_name 
--------+--------
 矢口   | 亜由美
 久保田 | 守
 児玉   | 毅
 村井   | 佐知子
(4 rows)