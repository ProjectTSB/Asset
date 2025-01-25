#> asset:artifact/0758.sina_tk/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# スケジュールループ再開
    execute if entity @e[type=marker,tag=L2.Bullet,limit=1] run schedule function asset:artifact/0758.sina_tk/click/bullet/loop 1t replace