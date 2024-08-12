#> asset:mob/0391.axia_first/ai/projectile/sword/1.1.loop
#
# 初期化ループ処理
#
# @within function
#   asset:mob/0391.axia_first/ai/projectile/sword/1.init
#   asset:mob/0391.axia_first/ai/projectile/sword/1.1.loop
#   asset:mob/0391.axia_first/ai/projectile/shock_wave/1.init

# 少し下げて判定
    scoreboard players remove $AV.Temp Temporary 1
    tp @s ~ ~-0.25 ~ ~ ~
    execute at @s if block ~ ~ ~ #lib:no_collision unless block ~ ~-0.25 ~ #lib:no_collision run scoreboard players set $AV.Temp Temporary -100
    execute at @s if score $AV.Temp Temporary matches 1.. run function asset:mob/0391.axia_first/ai/projectile/sword/1.1.loop
