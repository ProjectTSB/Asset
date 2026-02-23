#> asset:mob/0341.louvert/tick/animation/14_1_falling_strike/tp_downer_loop
#
#
#
# @within function
#   asset:mob/0341.louvert/tick/animation/14_1_falling_strike/tp_downer
#   asset:mob/0341.louvert/tick/animation/14_1_falling_strike/tp_downer_loop

# 少し下げて判定
    scoreboard players remove $9H.Temp Temporary 1
    tp @s ~ ~-0.25 ~ ~ ~
    execute at @s if block ~ ~ ~ #lib:no_collision/ unless block ~ ~-0.25 ~ #lib:no_collision/ run scoreboard players set $9H.Temp Temporary -100
    execute at @s if score $9H.Temp Temporary matches 1.. run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/tp_downer_loop
