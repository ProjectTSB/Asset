#> asset:artifact/1474.ninja_kunai/trigger/3.2.first_strike
#
#
#
# @within function asset:artifact/1474.ninja_kunai/trigger/3.main

# ダメージ加算
    scoreboard players add $Damage Temporary 100

# 演出
    execute at @e[type=#lib:living_without_player,tag=Victim,distance=..5,limit=1] run particle damage_indicator ~ ~ ~ 0 0 0 0.5 15
    playsound item.trident.throw player @a ~ ~ ~ 2 2
    playsound item.shovel.flatten player @a ~ ~ ~ 2 0.5
