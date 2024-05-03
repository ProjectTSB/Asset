#> asset:artifact/0987.ghost_step/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# Scheduleループ
    execute if entity @e[type=area_effect_cloud,tag=RF.Bullet,limit=1] run schedule function asset:artifact/0987.ghost_step/trigger/4.schedule 1t replace