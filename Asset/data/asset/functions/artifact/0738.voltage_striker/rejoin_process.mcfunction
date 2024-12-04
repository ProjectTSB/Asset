#> asset:artifact/0738.voltage_striker/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# ループ再開
    execute if entity @e[type=marker,tag=KI.Bullet,limit=1] run schedule function asset:artifact/0738.voltage_striker/click/bullet/loop 1t replace