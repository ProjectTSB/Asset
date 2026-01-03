#> asset:object/1053.flamethrower_ball/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1053/tick

# 演出
    particle flame ~ ~ ~ 0 0 0 0 0

# super.tick
    execute at @s run function asset:object/super.tick
