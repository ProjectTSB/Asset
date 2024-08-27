#> asset:mob/0392.ecual_first/ai/projectile/water_magic/1.1.loop
#
# 初期化ループ処理
#
# @within function
#   asset:mob/0392.ecual_first/ai/projectile/water_magic/1.1.loop
#   asset:mob/0392.ecual_first/ai/projectile/water_magic/1.init
#   asset:mob/0392.ecual_first/ai/projectile/water_wall/1.init

# 少し下げて判定
    scoreboard players remove $AW.Temp Temporary 1
    tp @s ~ ~-0.25 ~ ~ ~
    execute at @s if block ~ ~ ~ #lib:no_collision unless block ~ ~-0.25 ~ #lib:no_collision run scoreboard players set $AW.Temp Temporary -100
    execute at @s if score $AW.Temp Temporary matches 1.. run function asset:mob/0392.ecual_first/ai/projectile/water_magic/1.1.loop
