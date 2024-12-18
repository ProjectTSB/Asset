#> asset:object/2015.axia_shock_wave/tick/summon_area
#
# 範囲表示
#
# @within function asset:object/2015.axia_shock_wave/tick/

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride set value {Color:16711731,Scale:[7f,7f,0.01f],Tick:30}

# 召喚
    data modify storage api: Argument.ID set value 2063
    function api:object/summon
