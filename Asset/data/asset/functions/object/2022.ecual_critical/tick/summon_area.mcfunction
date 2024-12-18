#> asset:object/2022.ecual_critical/tick/summon_area
#
# 範囲表示
#
# @within function asset:object/2022.ecual_critical/tick/

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride set value {Color:127715833,Scale:[16f,16f,0.01f],Tick:70}

# 召喚
    data modify storage api: Argument.ID set value 2063
    function api:object/summon
