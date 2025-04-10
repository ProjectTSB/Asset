#> asset:object/1137.light_orb/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1137/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    execute if score @s General.Object.Tick matches ..7 run function asset:object/1137.light_orb/tick/vfx

# 炸裂
    execute if score @s General.Object.Tick matches 8.. run function asset:object/1137.light_orb/tick/boom
