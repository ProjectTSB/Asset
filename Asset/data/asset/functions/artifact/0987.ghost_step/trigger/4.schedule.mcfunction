#> asset:artifact/0987.ghost_step/trigger/4.schedule
#
#
#
# @within function
#        asset:artifact/0987.ghost_step/trigger/3.main
#        asset:artifact/0987.ghost_step/trigger/4.schedule
#        asset:artifact/0987.ghost_step/trigger/rejoin_process

# 玉が実行する処理
    execute as @e[type=area_effect_cloud,tag=RF.Bullet] at @s run function asset:artifact/0987.ghost_step/trigger/5.bullet

# Scheduleループ
    execute if entity @e[type=area_effect_cloud,tag=RF.Bullet,limit=1] run schedule function asset:artifact/0987.ghost_step/trigger/4.schedule 1t replace