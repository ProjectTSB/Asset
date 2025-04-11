#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/chaser_shot/activate
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/chaser_shot/tick

# 置いておいたマーカーの位置にオブジェクトを出す
    execute at @e[type=marker,tag=C5.Marker.SummonPoint,distance=..256] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/chaser_shot/summon/bullet

# マーカーをキル
    kill @e[type=marker,tag=C5.Marker.SummonPoint,distance=..256]
