#> asset:object/2111.heiloang_thunder/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2111/init

# 移動
    tp @s ~ ~ ~ ~180 ~

# 予告
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.Color set value 16761175
    data modify storage api: Argument.FieldOverride.Scale set value [6f,50f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 11
    data modify storage api: Argument.FieldOverride.Tick set value 16
    execute at @s positioned ~ ~-2.4 ~ run function api:object/summon
