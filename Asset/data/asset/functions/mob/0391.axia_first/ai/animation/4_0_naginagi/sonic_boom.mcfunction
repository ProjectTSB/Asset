#> asset:mob/0391.axia_first/ai/animation/4_0_naginagi/sonic_boom
#
# ソニックブーム
#
# @within function asset:mob/0391.axia_first/ai/animation/4_0_naginagi/

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride set value {Item:{id:"minecraft:leather_horse_armor"},Color:16711731,Frames:[20356,20357,20358,20359,20360,20361,20362],Scale:[20f,20f,0.1f],Transformation:{left_rotation:[-0.5f,-0.5f,-0.5f,0.5f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}

# 召喚
    data modify storage api: Argument.ID set value 2001
    execute positioned ^ ^0.2 ^ run function api:object/summon
