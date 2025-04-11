#> asset:object/2178.tiamat_icicledive/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2178/init

# 角度をランダム化
    execute store result entity @s Rotation[0] float 0.1 run random value 0..3600

# 予告
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.Scale set value [7f,60f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 15
    data modify storage api: Argument.FieldOverride.Tick set value 60
    execute at @s positioned ^ ^0.5 ^-30 run function api:object/summon
