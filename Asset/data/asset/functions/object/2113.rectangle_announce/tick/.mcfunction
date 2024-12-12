#> asset:object/2113.rectangle_announce/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2113/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 3Tick後に伸びていく
    execute if entity @s[scores={General.Object.Tick=3}] run function asset:object/2113.rectangle_announce/tick/transform

# 消滅処理
    execute if score @s General.Object.Tick > @s 2113.Tick run kill @s
