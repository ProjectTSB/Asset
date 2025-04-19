#> asset:object/2104.lexiel_laser/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2104/init

# 予告を召喚
    data modify storage api: Argument.ID set value 2063
    data modify storage api: Argument.FieldOverride set value {Tick:20,Color:16777181,Scale:[2.828f,2.828f,0.01f]}
    function api:object/summon
