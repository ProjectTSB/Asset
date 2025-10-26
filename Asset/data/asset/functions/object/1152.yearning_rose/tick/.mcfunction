#> asset:object/1152.yearning_rose/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1152/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 敵についていく
    function asset:object/1152.yearning_rose/tick/teleport.m with storage asset:context this

#
    execute if score @s General.Object.Tick matches 4 run function asset:object/1152.yearning_rose/tick/transformation/1
    execute if score @s General.Object.Tick matches 14 run function asset:object/1152.yearning_rose/tick/transformation/2

# 消滅処理
    kill @s[scores={General.Object.Tick=100..}]
