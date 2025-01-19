#> asset:mob/0412.tiamat/tick/event/hellwing/prediction
#
# ヘルウィング
#
# @within
#    function asset:mob/0412.tiamat/tick/event/hellwing/
#    function asset:mob/0412.tiamat/tick/event/terzetto_succession_dive/

# 予告
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.Scale set value [10f,90f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 10
    data modify storage api: Argument.FieldOverride.Tick set value 15
    execute positioned ^ ^ ^-30 run function api:object/summon
