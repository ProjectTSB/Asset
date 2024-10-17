#> asset:mob/1004.tultaria/tick/base_move/element_select/change/water
#
# チェーンジウォーター！
#
# @within function
#   asset:mob/1004.tultaria/tick/base_move/element_select/only_one_element
#   asset:mob/1004.tultaria/tick/base_move/element_select/get.m

# 演出
    particle dust 0.8 1 1 1.5 ~ ~1 ~ 0.3 0.7 0.3 1 50
    particle minecraft:falling_dust minecraft:snow ~ ~1 ~ 0.5 0.7 0.5 1 50
    playsound ogg:block.respawn_anchor.charge2 hostile @a ~ ~ ~ 2 2
    playsound ogg:block.respawn_anchor.charge2 hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.riptide_1 hostile @a ~ ~ ~ 2 1

# タグ付与
    tag @s add RW.Mode.Water
