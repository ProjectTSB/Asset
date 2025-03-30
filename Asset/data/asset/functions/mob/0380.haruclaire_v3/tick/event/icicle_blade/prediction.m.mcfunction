#> asset:mob/0380.haruclaire_v3/tick/event/icicle_blade/prediction.m
#
# アイシクルブレード
#
# @within
#    function asset:mob/0380.haruclaire_v3/tick/event/icicle_blade/

# 予告線表示
    $tp @s ~ ~ ~ ~$(Rotate) 0
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.Scale set value [4f,50f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 8
    data modify storage api: Argument.FieldOverride.Tick set value 32
    execute at @s positioned ^ ^ ^-25 run function api:object/summon
    tp @s ~ ~ ~ ~ ~
