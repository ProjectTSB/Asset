#> asset:artifact/0172.icicle/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# ループする
    execute if entity @e[type=area_effect_cloud,tag=4S.Laser,limit=1] run schedule function asset:artifact/0172.icicle/click/laser/schedule 1t replace