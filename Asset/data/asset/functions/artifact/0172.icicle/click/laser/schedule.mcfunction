#> asset:artifact/0172.icicle/click/laser/schedule
#
#
#
# @within function
#    asset:artifact/0172.icicle/click/
#    asset:artifact/0172.icicle/click/rejoin_process
#    asset:artifact/0172.icicle/click/laser/schedule

# 実行する
    execute as @e[type=area_effect_cloud,tag=4S.Laser] at @s run function asset:artifact/0172.icicle/click/laser/1.laser

# ループする
    execute if entity @e[type=area_effect_cloud,tag=4S.Laser,limit=1] run schedule function asset:artifact/0172.icicle/click/laser/schedule 1t replace