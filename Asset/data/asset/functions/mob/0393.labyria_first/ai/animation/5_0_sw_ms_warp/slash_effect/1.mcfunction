#> asset:mob/0393.labyria_first/ai/animation/5_0_sw_ms_warp/slash_effect/1
#
# 斬撃エフェクト表示
#
# @within function
#   asset:mob/0393.labyria_first/ai/animation/5_0_sw_ms_warp/
#   asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride set value {Item:{id:"minecraft:leather_horse_armor"},Color:16777088,Frames:[20353,20353,20353,20353,20354,20354,20355],Scale:[7f,7f,0.1f],Transformation:{left_rotation:[-0.5f,-0.5f,-0.5f,0.5f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}

# 召喚
    data modify storage api: Argument.ID set value 2001
    execute positioned ^ ^1 ^1 run function api:object/summon

# サウンド
    function asset:mob/0393.labyria_first/ai/general/6.slash_sound
