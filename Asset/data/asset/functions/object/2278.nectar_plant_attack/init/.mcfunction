#> asset:object/2278.nectar_plant_attack/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2278/init

# 予告召喚
    data modify storage api: Argument.ID set value 2063
    data modify storage api: Argument.FieldOverride set value {Color:16732083,Scale:[8f,8f,0.01f]}
    data modify storage api: Argument.FieldOverride.Tick set from storage asset:context this.Tick
    function api:object/summon
