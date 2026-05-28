#> asset:object/1152.yearning_rose/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1152/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 敵についていく
    function asset:object/1152.yearning_rose/tick/chase.m with storage asset:context this

# transformation
    execute if score @s General.Object.Tick matches 4 run function asset:object/1152.yearning_rose/tick/transformation/1
    execute if score @s General.Object.Tick matches 6 run function asset:object/1152.yearning_rose/tick/transformation/2
    execute if score @s General.Object.Tick matches 10 run function asset:object/1152.yearning_rose/tick/transformation/3
    execute if score @s General.Object.Tick matches 13 run function asset:object/1152.yearning_rose/tick/transformation/4

# 消滅処理
    kill @s[scores={General.Object.Tick=17..}]
