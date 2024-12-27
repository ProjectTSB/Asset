#> asset:mob/0372.tutankhamen/tick/skill/laser/alert
#
#
#
# @within function
#   asset:mob/0372.tutankhamen/tick/skill/laser/
#   asset:mob/0372.tutankhamen/tick/skill/laser/alert

# パーティクル
    particle minecraft:dust 0 1 1 0.5 ^ ^ ^ 0 0 0 0 1 force @a[distance=..32]
    particle minecraft:dust 0.3 1 1 0.5 ^ ^ ^0.5 0 0 0 0 1 force @a[distance=..32]
    particle minecraft:dust 0.7 1 1 0.5 ^ ^ ^-0.5 0 0 0 0 1 force @a[distance=..32]

# 壁がなければ再帰
    execute if entity @s[distance=..32] positioned ^ ^ ^1 run function asset:mob/0372.tutankhamen/tick/skill/laser/alert
