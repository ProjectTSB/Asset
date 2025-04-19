#> asset:object/2212.eclael_upper_shot/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2212/init

# 予告
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.Color set value 16765324
    data modify storage api: Argument.FieldOverride.Scale set value [8f,60f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 15
    data modify storage api: Argument.FieldOverride.Tick set value 70
    execute at @s positioned ^ ^ ^-30 run function api:object/summon
