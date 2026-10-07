#> asset:mob/0464.drain_plant/tick/fall/start
#
#
#
# @within function asset:mob/0464.drain_plant/tick/fall/

# 落下できるようにする
    data modify entity @s NoAI set value 0b
    data modify entity @s OnGround set value 0b
    data modify storage asset:context this.IsFalling set value true
