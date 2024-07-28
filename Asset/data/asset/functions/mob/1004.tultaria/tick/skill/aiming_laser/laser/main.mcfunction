#> asset:mob/1004.tultaria/tick/skill/aiming_laser/laser/main
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/aiming_laser/shot

# パーティクル
    # 内側
        particle minecraft:dust_color_transition 0.6 0.15 0.1 1 1 0 0 ^ ^ ^ 0 0 0 0 1 force @a[distance=..30]
        particle minecraft:dust_color_transition 0.6 0.15 0.1 1 1 0 0 ^ ^ ^0.5 0 0 0 0 1 force @a[distance=..30]
        particle minecraft:dust_color_transition 0.6 0.15 0.1 1 1 0 0 ^ ^ ^-0.5 0 0 0 0 1 force @a[distance=..30]
    # 外側
        particle minecraft:dust 0.3 0 0 0.7 ^ ^ ^ 0.07 0.07 0.07 0 1 force @a[distance=..30]
        particle minecraft:dust 0.3 0 0 0.7 ^ ^ ^0.5 0.07 0.07 0.07 0 1 force @a[distance=..30]
        particle minecraft:dust 0.3 0 0 0.7 ^ ^ ^-0.5 0.07 0.07 0.07 0 1 force @a[distance=..30]

# ダメージ
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[tag=!PlayerShouldInvulnerable,dx=0] positioned ~0.5 ~0.5 ~0.5 run function asset:mob/1004.tultaria/tick/skill/mini/teleport_beam/beam/hit

# 壁ヒットで炸裂
    execute unless block ^ ^ ^1 #lib:no_collision run function asset:mob/1004.tultaria/tick/skill/mini/teleport_beam/beam/hit

# 壁がなかったり、プレイヤーにあたったりしなければ再帰
    execute if entity @s[distance=..30] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @a[tag=!PlayerShouldInvulnerable,dx=0] positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^1 if block ~ ~ ~ #lib:no_collision run function asset:mob/1004.tultaria/tick/skill/aiming_laser/laser/main