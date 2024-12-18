#> asset:mob/0391.axia_first/ai/projectile/zangekihou/2.effect_init
#
# 斬撃砲 ソニックブームエフェクト
#
# @within function asset:mob/0391.axia_first/ai/projectile/zangekihou/1.start

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride set value {Item:{id:"minecraft:leather_horse_armor"},Color:16711731,Frames:[20356,20357,20358,20359,20360,20361,20362],Scale:[6f,6f,0.1f],Transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}

# 召喚
    data modify storage api: Argument.ID set value 2001
    function api:object/summon
