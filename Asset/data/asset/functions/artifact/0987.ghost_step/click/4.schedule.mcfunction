#> asset:artifact/0987.ghost_step/click/4.schedule
#
#
#
# @within function
#        asset:artifact/0987.ghost_step/click/
#        asset:artifact/0987.ghost_step/click/4.schedule
#        asset:artifact/0987.ghost_step/click/rejoin_process

# 玉が実行する処理
    execute as @e[type=item_display,tag=RF.Bullet] at @s run function asset:artifact/0987.ghost_step/click/5.bullet

# Scheduleループ
    execute if entity @e[type=item_display,tag=RF.Bullet,limit=1] run schedule function asset:artifact/0987.ghost_step/click/4.schedule 1t replace
