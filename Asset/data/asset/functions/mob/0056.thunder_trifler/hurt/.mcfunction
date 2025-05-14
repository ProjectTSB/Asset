#> asset:mob/0056.thunder_trifler/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/56/hurt

#> Private
# @private
    #declare tag CanTP
    #declare score_holder $LatestTPTick
    #declare score_holder $CurrentTick

# 演出
    particle minecraft:dust 1 1 0 1 ~ ~ ~ 0.8 0.8 0.8 0.1 20 normal @a
    particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0 10 normal @a
    playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.7 1.4 0
    playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.7 0.9 0

# TP間隔
    execute store result score $LatestTPTick Temporary run data get storage asset:context this.LatestTPTick
    execute store result score $CurrentTick Temporary run time query gametime
    scoreboard players operation $CurrentTick Temporary -= $LatestTPTick Temporary
    execute if predicate api:global_vars/difficulty/easy if score $CurrentTick Temporary matches 70.. run tag @s add CanTP
    execute if predicate api:global_vars/difficulty/normal if score $CurrentTick Temporary matches 50.. run tag @s add CanTP
    execute if predicate api:global_vars/difficulty/min/3_blessless if score $CurrentTick Temporary matches 30.. run tag @s add CanTP

# 確率tp
    execute if entity @s[tag=CanTP] if predicate lib:random_pass_per/30 run function asset:mob/0056.thunder_trifler/hurt/teleport

# リセット
    tag @s[tag=CanTP] remove CanTP
    scoreboard players reset $LatestTPTick Temporary
    scoreboard players reset $CurrentTick Temporary
