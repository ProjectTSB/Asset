#> asset:mob/1004.tultaria/tick/base_move/element_select/change/water
#
# チェーンジウォーター！
#
# @within function asset:mob/1004.tultaria/tick/base_move/element_select/tags

# 演出
    particle dust 0.8 1 1 1.5 ~ ~1 ~ 0.3 0.7 0.3 1 50
    particle minecraft:falling_dust minecraft:snow ~ ~1 ~ 0.5 0.7 0.5 1 50
    playsound ogg:block.respawn_anchor.charge2 hostile @a ~ ~ ~ 2 2
    playsound ogg:block.respawn_anchor.charge2 hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.riptide_1 hostile @a ~ ~ ~ 2 1

# 腕輪を変更
    item replace entity @e[type=item_display,tag=aj.tultaria.bone.right_ring,sort=nearest,limit=1] container.0 with minecraft:leather_horse_armor{CustomModelData:20397,display:{color:10614015}}
    item replace entity @e[type=item_display,tag=aj.tultaria.bone.left_ring,sort=nearest,limit=1] container.0 with minecraft:leather_horse_armor{CustomModelData:20397,display:{color:10614015}}

# タグ付与
    tag @s add RW.Mode.Water
