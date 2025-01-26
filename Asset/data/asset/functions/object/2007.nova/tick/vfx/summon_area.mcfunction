#> asset:object/2007.nova/tick/vfx/summon_area
#
# Tick で表示するVFX
#
# @within function asset:object/2007.nova/tick/

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride set value {Color:11141375,Scale:[10f,10f,0.01f],Tick:62}

# 召喚
    data modify storage api: Argument.ID set value 2063
    function api:object/summon
