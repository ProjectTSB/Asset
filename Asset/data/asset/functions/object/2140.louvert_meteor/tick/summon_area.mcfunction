#> asset:object/2140.louvert_meteor/tick/summon_area
#
# パーティクルの表示
#
# @within function asset:object/2140.louvert_meteor/tick/

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride set value {Color:16748800,Scale:[4f,4f,0.01f],Tick:60}

# 召喚
    data modify storage api: Argument.ID set value 2063
    function api:object/summon
