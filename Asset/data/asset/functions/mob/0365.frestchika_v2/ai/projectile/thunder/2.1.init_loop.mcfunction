#> asset:mob/0365.frestchika_v2/ai/projectile/thunder/2.1.init_loop
#
# 位置調整用ループ処理
#
# @within function
#   asset:mob/0365.frestchika_v2/ai/projectile/thunder/2.init
#   asset:mob/0365.frestchika_v2/ai/projectile/thunder/2.1.init_loop

# 少し下げて判定
    scoreboard players remove $A5.Temp Temporary 1
    tp @s ~ ~-0.25 ~ ~ ~
    execute at @s if block ~ ~ ~ #lib:no_collision unless block ~ ~-0.25 ~ #lib:no_collision run scoreboard players set $A5.Temp Temporary -100
    execute at @s if score $A5.Temp Temporary matches 1.. run function asset:mob/0365.frestchika_v2/ai/projectile/thunder/2.1.init_loop