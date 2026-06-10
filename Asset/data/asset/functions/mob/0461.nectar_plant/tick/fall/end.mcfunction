#> asset:mob/0461.nectar_plant/tick/fall/end
#
#
#
# @within function asset:mob/0461.nectar_plant/tick/

# 落下を終了
    data modify entity @s NoAI set value 1b
    tag @s remove 461.Fall
