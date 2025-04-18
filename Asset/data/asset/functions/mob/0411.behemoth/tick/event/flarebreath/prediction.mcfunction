#> asset:mob/0411.behemoth/tick/event/flarebreath/prediction
#
# フレアブレス
#
# @within
#    function asset:mob/0411.behemoth/tick/event/flarebreath/
#    function asset:mob/0411.behemoth/tick/event/terzetto_disaster/
#    function asset:mob/0411.behemoth/tick/event/terzetto_ragnarok/

# 角度変更
    execute facing entity @e[type=area_effect_cloud,tag=BF.Temp.AttackRotation,sort=furthest,limit=1] feet run tp @s ~ ~ ~ ~ 0

# 予告
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 16727040
    data modify storage api: Argument.FieldOverride.Scale set value [8f,50f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 10
    data modify storage api: Argument.FieldOverride.Tick set value 25
    execute positioned ^ ^-0.3 ^ rotated as @s run function api:object/summon

# 終了
    tp @s ~ ~ ~ ~ ~
