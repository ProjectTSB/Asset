#> asset:mob/0391.axia_first/ai/animation/3_0_triple_slash/slash_summon/1
#
# 斬撃エフェクト召喚1
#
# @within function asset:mob/0391.axia_first/ai/animation/3_0_triple_slash/

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride set value {Item:{id:"minecraft:leather_boots"},Color:16711731,Frames:[20335,20335,20336,20336,20337],Scale:[4f,5f,0.1f],Transformation:{left_rotation:[-0.342f,0f,0f,0.9397f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}

# 召喚
    data modify storage api: Argument.ID set value 2001
    execute positioned ^-0.3 ^1.7 ^1.5 run function api:object/summon

# ディスプレイの位置調整
    execute positioned ^-0.3 ^1.7 ^1.5 as @e[type=item_display,tag=2001.CustomEffect,distance=..0.1] facing entity @e[type=wither_skeleton,tag=this,distance=..64,sort=nearest,limit=1] feet rotated ~-90 0 run tp @s ^ ^ ^ ~ ~
