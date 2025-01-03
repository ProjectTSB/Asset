#> asset:mob/1004.tultaria/tick/base_move/element_select/change/thunder
#
# チェーンジサンダー！
#
# @within function asset:mob/1004.tultaria/tick/base_move/element_select/tags

# 演出
    particle dust 1 1 0.5 1.5 ~ ~1 ~ 0.3 0.7 0.3 1 50
    particle minecraft:instant_effect ~ ~1 ~ 0.7 1 0.7 0 25
    playsound ogg:block.respawn_anchor.charge2 hostile @a ~ ~ ~ 2 2
    playsound ogg:block.respawn_anchor.charge2 hostile @a ~ ~ ~ 2 1.5
    playsound ogg:block.respawn_anchor.set_spawn1 hostile @a ~ ~ ~ 2 2

# 腕輪を変更
    item replace entity @e[type=item_display,tag=aj.tultaria.bone.right_ring,sort=nearest,limit=1] container.0 with minecraft:leather_horse_armor{CustomModelData:20397,display:{color:16514816}}
    item replace entity @e[type=item_display,tag=aj.tultaria.bone.left_ring,sort=nearest,limit=1] container.0 with minecraft:leather_horse_armor{CustomModelData:20397,display:{color:16514816}}

# タグ付与
    tag @s add RW.Mode.Thunder
