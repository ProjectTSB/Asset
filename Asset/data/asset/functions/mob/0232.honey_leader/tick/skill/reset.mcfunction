#> asset:mob/0232.honey_leader/tick/skill/reset
#
#
#
# @within function
#   asset:mob/0232.honey_leader/tick/skill/beam/shoot_and_reset
#   asset:mob/0232.honey_leader/tick/skill/buff_and_heal

# リセット
    scoreboard players set @s General.Mob.Tick -60
    data modify entity @s NoAI set value 0b
    tag @s remove 6G.Beam
