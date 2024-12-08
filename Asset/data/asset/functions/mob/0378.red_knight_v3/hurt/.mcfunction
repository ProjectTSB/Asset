#> asset:mob/0378.red_knight_v3/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/378/hurt

#> private
# @private
    #declare score_holder $Health
    #declare score_holder $MaxHealth

# 抽象
    function asset:mob/super.hurt

# 演出
    playsound minecraft:entity.item.break hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:block.soul_sand.break hostile @a ~ ~ ~ 1.5 0.75

# 現在体力を割合で出す
    execute store result score $Health Temporary run data get entity @s AbsorptionAmount 10000
    execute store result score $MaxHealth Temporary run function api:mob/get_max_health
    scoreboard players operation $Health Temporary /= $MaxHealth Temporary

# HP50%以下
    execute if score $Health Temporary matches ..5000 unless entity @s[tag=AI.HPless50per] run tag @s add AI.HPless50per

# リセット
    scoreboard players reset $Health
    scoreboard players reset $MaxHealth
