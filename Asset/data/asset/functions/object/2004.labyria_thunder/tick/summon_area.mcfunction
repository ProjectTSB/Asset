#> asset:object/2004.labyria_thunder/tick/summon_area
#
# パーティクルの表示
#
# @within function asset:object/2004.labyria_thunder/tick/

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride set value {Color:11141375,Scale:[4f,4f,0.01f],Tick:20}

# 召喚
    data modify storage api: Argument.ID set value 2063
    function api:object/summon
