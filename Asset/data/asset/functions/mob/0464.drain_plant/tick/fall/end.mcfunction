#> asset:mob/0464.drain_plant/tick/fall/end
#
#
#
# @within function asset:mob/0464.drain_plant/tick/fall/

# 落下を終了
    data modify entity @s NoAI set value 1b
    data modify storage asset:context this.IsFalling set value false
