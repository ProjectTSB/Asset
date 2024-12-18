#> asset:object/2020.water_wall/tick/summon_area
#
# 範囲表示
#
# @within function asset:object/2020.water_wall/tick/

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride set value {Color:33023,Scale:[4f,4f,0.01f],Tick:20}

# 召喚
    data modify storage api: Argument.ID set value 2063
    function api:object/summon
