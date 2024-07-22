#> asset:mob/0370.prominence_magic/tick/2.in_air
#
#
#
# @within function asset:mob/0370.prominence_magic/tick/1

# 演出
    particle dust_color_transition 0.922 0.318 0.133 1.2 0.51 0.067 0.051 ~ ~ ~ 0.1 0.1 0.1 0 1 normal @a
    particle flame ~ ~ ~ 0.05 0.05 0.05 0 1
    execute rotated ~ ~2 run particle dust_color_transition 0.922 0.318 0.133 1.2 0.51 0.067 0.051 ^ ^ ^0.5 0.1 0.1 0.1 0 1 normal @a
    execute rotated ~ ~2 run particle flame ^ ^ ^0.5 0.05 0.05 0.05 0 1
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 0.1 1.5 0

# 地面に着弾するまで直進
    tp @s ^ ^ ^0.5 ~ ~2

# 地面に着弾したらTickの値を変更
    execute unless block ^ ^ ^0.5 #lib:no_collision run scoreboard players set @s AA.Tick 100
