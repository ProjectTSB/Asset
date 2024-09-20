#> asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/slash_effect/1
#
# 斬撃エフェクト表示
#
# @within function asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride set value {Color:16777088,Second:8,Scale:7f,transformation:{left_rotation:[-0.5f,-0.5f,-0.5f,0.5f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}

# 召喚
   data modify storage api: Argument.ID set value 2002
   execute positioned ^ ^0.5 ^1 run function api:object/summon

# サウンド
    function asset:mob/0393.labyria_first/ai/general/6.slash_sound
