#> asset:object/2143.louvert_soul_quake/tick/summon_area
#
# 範囲表示
#
# @within function asset:object/2143.louvert_soul_quake/tick/

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride set value {Color:37375,Scale:[3f,3f,0.01f],Tick:20}

# 召喚
    data modify storage api: Argument.ID set value 2063
    function api:object/summon
