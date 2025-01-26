#> asset:object/2005.thunder_bomb/tick/summon_area
#
# VFXを表示する
#
# @within function asset:object/2005.thunder_bomb/tick/

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride set value {Color:11141375,Scale:[6f,6f,0.01f],Tick:100}

# 召喚
    data modify storage api: Argument.ID set value 2063
    function api:object/summon
