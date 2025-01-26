#> asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/slash_effect/2
#
# 斬撃エフェクト表示
#
# @within function
#   asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/
#   asset:mob/0393.labyria_first/ai/animation/5_0_sw_ms_warp/

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride set value {Color:16777088,Frames:[20335,20335,20335,20335,20336,20336,20337],Scale:[5f,5f,0.1f],Transformation:{left_rotation:[0.1228f,-0.6964f,0.1228f,0.6964f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}

# 召喚
    data modify storage api: Argument.ID set value 2001
    execute positioned ^-0.4 ^2.25 ^1.75 run function api:object/summon

# サウンド
    function asset:mob/0393.labyria_first/ai/general/6.slash_sound
