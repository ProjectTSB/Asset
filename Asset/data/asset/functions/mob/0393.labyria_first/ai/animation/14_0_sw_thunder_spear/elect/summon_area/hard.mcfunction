#> asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/summon_area/hard
#
# ハード帯電のエリア表示
#
# @within function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/**

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride set value {Color:11141375,Scale:[40f,40f,0.01f],Tick:10}

# 召喚
    data modify storage api: Argument.ID set value 2063
    function api:object/summon
