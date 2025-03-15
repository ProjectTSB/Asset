#> asset:object/2224.bee_bomb/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2224/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 警告
    execute rotated ~ 90 run function asset:object/2224.bee_bomb/tick/line

# 一定時間後動く
    execute if score @s General.Object.Tick matches 10 run data modify storage asset:context this.Speed set value 2

# 継承して動かす
    execute at @s run function asset:object/super.tick
