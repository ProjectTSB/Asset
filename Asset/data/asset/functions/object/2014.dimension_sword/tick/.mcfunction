#> asset:object/2014.dimension_sword/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2014/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

    execute if score @s General.Object.Tick matches 1 run function asset:object/2014.dimension_sword/tick/summon_area
    execute if score @s General.Object.Tick matches 1 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 1 1.5 0

# 発動処理
    execute if score @s General.Object.Tick matches 41.. run function asset:object/2014.dimension_sword/tick/cast
