#> asset:object/1161.ice_brand_arts/tick/vfx
#
#
#
# @within function asset:object/1161.ice_brand_arts/tick/fall

# 演出
    particle block dirt ^ ^ ^ 1 1 1 0 20
    particle end_rod ~ ~0.2 ~ 0 0 0 0.3 5 normal @a
    playsound item.trident.hit_ground neutral @a ^ ^ ^ 1 2
    playsound block.glass.break neutral @a ~ ~ ~ 0.7 1.8

# もう動かないようにtag付与
    tag @s add W9.Land
