#> asset:mob/0378.red_knight_v3/tick/05.skill_jump/falling
#
#
#
# @within function asset:mob/0378.red_knight_v3/tick/05.skill_jump/main

# 落下
    execute positioned ~ ~-0.4 ~ run function asset:mob/0378.red_knight_v3/tick/common/tp
    execute at @s positioned ~ ~-0.4 ~ run function asset:mob/0378.red_knight_v3/tick/common/tp
    execute at @s positioned ~ ~-0.4 ~ run function asset:mob/0378.red_knight_v3/tick/common/tp
    execute at @s positioned ~ ~-0.4 ~ run function asset:mob/0378.red_knight_v3/tick/common/tp
    execute at @s rotated ~ 0 run particle flame ^ ^1 ^1.2 0 0 0 0.01 2
# 着地
    execute at @s unless block ~ ~-0.3 ~ #lib:no_collision/ run scoreboard players set @s AI.Tick 1000
