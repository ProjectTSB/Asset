#> asset:mob/1004.tultaria/tick/base_move/element_select/change/light
#
# ハード限定で、三属性を一周した場合にこれになる
#
# @within function
#   asset:mob/1004.tultaria/tick/base_move/element_select/tags
#   asset:mob/1004.tultaria/tick/skill/**

# 演出
    particle dust 1 1 1 1.5 ~ ~1 ~ 0.3 0.7 0.3 1 50
    particle minecraft:end_rod ~ ~1 ~ 0.7 1 0.7 0 25
    playsound ogg:block.respawn_anchor.charge1 hostile @a ~ ~ ~ 2 2
    playsound ogg:block.respawn_anchor.charge1 hostile @a ~ ~ ~ 2 1.5
    playsound ogg:item.trident.thunder2 hostile @a ~ ~ ~ 2 2

# 腕輪を変更
    item replace entity @e[type=item_display,tag=aj.tultaria.bone.right_ring,sort=nearest,limit=1] container.0 with minecraft:leather_horse_armor{CustomModelData:20397,display:{color:16777215}}
    item replace entity @e[type=item_display,tag=aj.tultaria.bone.left_ring,sort=nearest,limit=1] container.0 with minecraft:leather_horse_armor{CustomModelData:20397,display:{color:16777215}}

# 画面エフェクト
#    title @a[distance=..100] times 5 10 5
#    title @a[distance=..100] title {"text":""}
#    title @a[distance=..100] subtitle {"text":"\uE010","font":"screen_effect","color":"#cccccc"}

# タグ付与
    tag @s add RW.Mode.Light
