#> asset:mob/1004.tultaria/tick/skill/fire/combo_slash/warp
#
# 再帰ダッシュ
#
# @within function
#   asset:mob/1004.tultaria/tick/skill/fire/combo_slash/tick
#   asset:mob/1004.tultaria/tick/skill/fire/combo_slash/warp

# パーティクル
    particle minecraft:dust 1 0.5 0 2 ^ ^ ^ 0 0 0 0 1 force @a[distance=..30]

# 壁がなければ再帰
    execute if entity @s[distance=..32] positioned ^ ^ ^1 if block ~ ~ ~ #lib:no_collision run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/warp
