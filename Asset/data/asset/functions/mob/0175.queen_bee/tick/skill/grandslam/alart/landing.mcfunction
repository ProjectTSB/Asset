#> asset:mob/0175.queen_bee/tick/skill/grandslam/alart/landing
#
#
#
# @within function asset:mob/0175.queen_bee/tick/skill/grandslam/alart/main

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride set value {Color:6356992,Scale:[13f,13f,0.01f],Tick:15}

# 召喚
    data modify storage api: Argument.ID set value 2063
    function api:object/summon
