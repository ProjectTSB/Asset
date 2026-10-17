#> asset:object/1165.bubble_spreader/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1165/tick


# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 一定時間以降追尾
    execute if score @s General.Object.Tick matches 8.. run function asset:object/1165.bubble_spreader/tick/homing

# super.tick
    execute at @s run function asset:object/super.tick
