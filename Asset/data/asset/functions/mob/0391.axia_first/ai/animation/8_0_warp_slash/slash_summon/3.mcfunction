#> asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/slash_summon/3
#
# 斬撃エフェクト召喚3
#
# @within function asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride set value {Item:{id:"minecraft:leather_horse_armor"},Color:16711731,Frames:[20353,20353,20353,20353,20353,20354,20354,20355],Scale:[6f,6f,0.1f],Transformation:{left_rotation:[-0.5f,-0.5f,-0.5f,0.5f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}

# 召喚
    data modify storage api: Argument.ID set value 2001
    execute positioned ^-0.5 ^0.85 ^1 run function api:object/summon

# ディスプレイの位置調整
    execute positioned ^-0.5 ^0.85 ^1 as @e[tag=2001.CustomEffect,distance=..0.1] facing entity @e[type=wither_skeleton,tag=this,distance=..64,sort=nearest,limit=1] feet rotated ~180 0 run tp @s ^ ^ ^ ~ ~
