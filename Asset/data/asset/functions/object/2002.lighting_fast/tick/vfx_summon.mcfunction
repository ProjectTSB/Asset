#> asset:object/2002.lighting_fast/tick/vfx_summon
#
# 衝撃波エフェクト召喚
#
# @within function asset:object/2002.lighting_fast/tick/vfx

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride set value {Item:{id:"minecraft:leather_horse_armor"},Color:16777088,Frames:[20356,20357,20358,20359,20360,20361,20362],Scale:[6f,6f,0.1f],Transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}

# 召喚
    data modify storage api: Argument.ID set value 2001
    function api:object/summon
