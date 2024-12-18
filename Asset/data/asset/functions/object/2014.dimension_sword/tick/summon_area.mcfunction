#> asset:object/2014.dimension_sword/tick/summon_area
#
# 範囲表示
#
# @within function asset:object/2014.dimension_sword/tick/

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride set value {Color:11141375,Scale:[5f,5f,0.01f],Tick:40}

# 召喚
    data modify storage api: Argument.ID set value 2063
    function api:object/summon
