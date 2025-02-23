#> asset:object/2207.eclael_slash_line/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2207/init

# 予告
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.Color set value 16761175
    data modify storage api: Argument.FieldOverride.Scale set value [5f,50f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 11
    data modify storage api: Argument.FieldOverride.Tick set value 25
    execute at @s positioned ^ ^ ^-25 run function api:object/summon
