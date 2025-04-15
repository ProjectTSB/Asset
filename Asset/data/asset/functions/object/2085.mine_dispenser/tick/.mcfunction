#> asset:object/2085.mine_dispenser/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2085/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# super
    execute at @s run function asset:object/super.tick

# 地雷散布
    execute if score @s General.Object.Tick matches 10 run function asset:object/2085.mine_dispenser/tick/scatter

# 消滅処理
    kill @s[scores={General.Object.Tick=200..}]
