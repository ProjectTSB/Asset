#> asset:mob/0378.red_knight_v3/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/378/hurt

#> Private
# @private
    #declare score_holder $Per

# 抽象
    function asset:mob/super.hurt

# 演出
    playsound minecraft:entity.item.break hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:block.soul_sand.break hostile @a ~ ~ ~ 1.5 0.75

# 体力割合取得
    function api:mob/get_health_percent
    execute store result score $Per Temporary run data get storage api: Return.HealthPer 100

# 50%以下ならTagを付与
    execute if score $Per Temporary matches ..50 run tag @s add AI.HPless50per

# リセット
    scoreboard players reset $Per Temporary
