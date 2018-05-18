2-4 問3 注文書テーブル(order_main)と注文詳細テーブル(order_disc)、ユーザテーブル(usr)、商品テーブル(product)を結合し、未納の注文について、発注日、注文コード、商品コードを昇順に注文情報を出力してみましょう。
出力列の別名は発注日、注文コード、利用者氏名、商品名、商品単価、購入数とします。


[回答]
-- 取得列
-- 注文書テーブル(order_main)の発注日(order_date列),
-- 注文書テーブル(order_main)の注文コード(po_id列),
-- ユーザテーブル(usr)の利用者氏名(l_name, u.f_name列),
-- 商品テーブル(product)の商品名(p_name列),
-- 商品テーブル(product)の商品単価(price列),
-- 注文詳細テーブル(order_disc)の購入数(quantity列)
  SELECT 
    om.order_date AS 発注日,
    om.po_id AS 注文コード,
    u.l_name || u.f_name AS 利用者氏名,
    p.p_name AS 商品名,
    p.price AS 商品単価,
    od.quantity AS 購入数
-- 結合条件
-- 注文詳細テーブル(order_disc)に商品テーブル(product)を内部統合
  FROM (
    (
      order_desc AS od
    INNER JOIN 
      product AS p
-- 統合するキー
-- 商品テーブル(product)のp_id列と注文詳細テーブル(order_disc)のp_id列
    ON
      p.p_id = od.p_id
    )
-- 結合条件
-- 注文詳細テーブル(order_disc)に注文書テーブル(order_main)を内部統合
    INNER JOIN
      order_main AS om
-- 統合するキー
-- 注文詳細テーブル(order_disc)のpo_id列と注文書テーブル(order_main)のpo_id列
    ON
      od.po_id = om.po_id
  )
-- 結合条件
-- 注文書テーブル(order_main)にユーザテーブル(usr)を内部統合
  INNER JOIN
    usr AS u
-- 統合するキー
-- 注文書テーブル(order_main)のuser_id列とユーザテーブル(usr)のuser_id列
  ON
    om.user_id = u.user_id
-- 取得条件
-- 注文書テーブル(order_main)のdelivery_date列の値がNULLのレコードのみ取得
  WHERE 
    om.delivery_date IS NULL
-- 並替条件
-- 下記を昇順
-- 注文書テーブル(order_main)の発注日(order_date)列
-- 注文書テーブル(order_main)の商品コード(po_id)列
-- 注文詳細テーブル(order_disc)の注文コード(p_id)列
  ORDER BY 
    om.order_date ASC,
    om.po_id ASC,
    od.p_id ASC
  ;


[出力結果]
   発注日   | 注文コード | 利用者氏名 |    商品名    | 商品単価 | 購入数 
------------+------------+------------+--------------+----------+--------
 2012-12-22 |         19 | 森本絵里   | 赤ボールペン |      100 |    100
 2012-12-25 |         20 | 西島文子   | 電卓         |      600 |     10