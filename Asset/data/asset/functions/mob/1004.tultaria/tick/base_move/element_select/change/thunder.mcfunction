#> asset:mob/1004.tultaria/tick/base_move/element_select/change/thunder
#
#
#
# @within function
#   asset:mob/1004.tultaria/tick/base_move/element_select/only_one_element
#   asset:mob/1004.tultaria/tick/base_move/element_select/get.m

# 演出
    particle dust 1 1 0.5 1.5 ~ ~1 ~ 0.3 0.7 0.3 1 50
    particle minecraft:instant_effect ~ ~1 ~ 0.7 1 0.7 0 25
    playsound ogg:block.respawn_anchor.charge2 hostile @a ~ ~ ~ 2 2
    playsound ogg:block.respawn_anchor.charge2 hostile @a ~ ~ ~ 2 1.5
    playsound ogg:block.respawn_anchor.set_spawn1 hostile @a ~ ~ ~ 2 2

# タグ付与
    tag @s add RW.Mode.Thunder
