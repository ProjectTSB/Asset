#> asset:object/2224.bee_bomb/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2224/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 一定時間後動く
    execute if score @s General.Object.Tick matches 30 run data modify storage asset:context this.Speed set value 1

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]

# 継承して動かす
    execute at @s run function asset:object/super.tick
