#> asset:object/1081.barrel/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1081/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# super.tick
    function asset:object/super.tick

# 消滅処理
    kill @s[scores={General.Object.Tick=40..}]
