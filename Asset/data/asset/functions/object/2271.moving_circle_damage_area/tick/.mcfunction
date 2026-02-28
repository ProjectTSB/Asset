#> asset:object/2271.moving_circle_damage_area/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2271/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# チカチカ
    function asset:object/2271.moving_circle_damage_area/tick/effect with storage asset:context this

# 消滅処理
    kill @s[scores={General.Object.Tick=100..}]
