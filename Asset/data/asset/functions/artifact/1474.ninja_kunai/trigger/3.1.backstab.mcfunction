#> asset:artifact/1474.ninja_kunai/trigger/3.1.backstab
#
#
#
# @within function asset:artifact/1474.ninja_kunai/trigger/3.main

# ダメージ加算
    scoreboard players add $Damage Temporary 70

# 演出
    execute at @e[type=#lib:living_without_player,tag=Victim,distance=..5,limit=1] anchored eyes run particle crit ~ ~ ~ 0.1 0.5 0.1 0.5 35
    playsound entity.wither_skeleton.death player @a ~ ~ ~ 1 2
