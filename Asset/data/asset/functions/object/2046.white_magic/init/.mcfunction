#> asset:object/2046.white_magic/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2046/init

# 予告を召喚
    data modify storage api: Argument.FieldOverride set value {Tick:40,Color:16777215,Scale:[6f,6f,0.01f]}
    data modify storage api: Argument.ID set value 2063
    function api:object/summon
