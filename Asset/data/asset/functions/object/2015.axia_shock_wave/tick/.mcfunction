#> asset:object/2015.axia_shock_wave/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2015/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    execute if score @s General.Object.Tick matches 1 run function asset:object/2015.axia_shock_wave/tick/summon_area
    execute if score @s General.Object.Tick matches 1 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 1 1.5 0

# 発動処理
    execute if score @s General.Object.Tick matches 31.. run function asset:object/2015.axia_shock_wave/tick/cast
