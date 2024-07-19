#> asset:mob/0370.prominence_magic/tick/2.in_air
#
#
#
# @within function asset:mob/0370.prominence_magic/tick/1

# 演出
    particle dust 0.541 0.055 0.055 1 ~ ~ ~ 0.1 0.1 0.1 0 2 normal @a
    execute if predicate lib:random_pass_per/70 run particle flame ~ ~ ~ 0.05 0.05 0.05 0 1

# 地面に着弾するまで直進
    tp @s ^ ^ ^0.5 ~ ~2

# 地面に着弾したらTickの値を変更
    execute unless block ^ ^ ^0.5 #lib:no_collision run scoreboard players set @s AA.Tick 100
