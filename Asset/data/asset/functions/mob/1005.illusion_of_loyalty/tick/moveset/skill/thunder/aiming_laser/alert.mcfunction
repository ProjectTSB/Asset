#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/alert
#
#
#
# @within function
#   asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/**
#   asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/alert

# パーティクル
    particle minecraft:dust 1 1 0.5 0.5 ^ ^ ^ 0 0 0 0 1 force @a[distance=..30]
    particle minecraft:dust 1 1 0.5 0.5 ^ ^ ^0.5 0 0 0 0 1 force @a[distance=..30]
    particle minecraft:dust 1 1 0.5 0.5 ^ ^ ^-0.5 0 0 0 0 1 force @a[distance=..30]

# 壁がなければ再帰
    execute if entity @s[distance=..30] positioned ^ ^ ^1 if block ~ ~ ~ #lib:no_collision/ run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/alert
