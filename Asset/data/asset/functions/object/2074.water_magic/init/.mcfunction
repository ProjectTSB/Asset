#> asset:object/2074.water_magic/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2074/init

# 予告を召喚
    data modify storage api: Argument.ID set value 2063
    data modify storage api: Argument.FieldOverride set value {Tick:30,Color:2851071,Scale:[4.5f,4.5f,0.01f]}
    function api:object/summon

# 魔法陣を召喚
    data modify storage api: Argument.ID set value 2279
    data modify storage api: Argument.FieldOverride.Char set value "0"
    data modify storage api: Argument.FieldOverride.Color set value "#2B80FF"
    data modify storage api: Argument.FieldOverride.AppearScale set value [2.25f,2.25f,0f]
    data modify storage api: Argument.FieldOverride.AppearDuration set value 30
    data modify storage api: Argument.FieldOverride.SpinDuration set value 10
    data modify storage api: Argument.FieldOverride.DisappearDuration set value 12
    data modify storage api: Argument.FieldOverride.Tick set value 65
    execute rotated ~ 90 run function api:object/summon
