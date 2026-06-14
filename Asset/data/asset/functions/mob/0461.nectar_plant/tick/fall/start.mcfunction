#> asset:mob/0461.nectar_plant/tick/fall/start
#
#
#
# @within function asset:mob/0461.nectar_plant/tick/

# 落下できるようにする
    data modify entity @s NoAI set value 0b
    tag @s add CT.Fall
