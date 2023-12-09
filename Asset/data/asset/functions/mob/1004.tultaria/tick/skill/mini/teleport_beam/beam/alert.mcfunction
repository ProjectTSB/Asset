#> asset:mob/1004.tultaria/tick/skill/mini/teleport_beam/beam/alert
#
# 予告レーザー
#
# @within function
#   asset:mob/1004.tultaria/tick/skill/mini/teleport_beam/
#   asset:mob/1004.tultaria/tick/skill/mini/teleport_beam/beam/alert

# パーティクル
    particle minecraft:dust 1 0 0 0.5 ^ ^ ^ 0 0 0 0 1 force @a[distance=..30]
    particle minecraft:dust 1 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force @a[distance=..30]
    particle minecraft:dust 1 0 0 0.5 ^ ^ ^-0.5 0 0 0 0 1 force @a[distance=..30]

# 壁がなければ再帰
    execute if entity @s[distance=..30] positioned ^ ^ ^1 if block ~ ~ ~ #lib:no_collision run function asset:mob/1004.tultaria/tick/skill/mini/teleport_beam/beam/alert