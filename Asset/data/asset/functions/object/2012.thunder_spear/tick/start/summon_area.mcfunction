#> asset:object/2012.thunder_spear/tick/start/summon_area
#
# ダメージエリア表示
#
# @within function asset:object/2012.thunder_spear/tick/

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride set value {Color:16742144,Scale:[20f,20f,0.01f],Tick:60}

# 召喚
    data modify storage api: Argument.ID set value 2063
    function api:object/summon
