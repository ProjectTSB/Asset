#> asset:artifact/0769.shaking_splash/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# ループ再開
    execute if entity @e[type=marker,tag=LD.Bullet,limit=1] run schedule function asset:artifact/0769.shaking_splash/click/bullet/loop 1t replace