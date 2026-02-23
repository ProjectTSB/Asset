#> asset:object/2268.gem_upper_shot/tick/summon_laser
#
# Objectのtick時の処理
#
# @within asset:object/2268.gem_upper_shot/tick/

# 演出
    data modify storage api: Argument.ID set value 2263
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.IsShot set value true
    data modify storage api: Argument.FieldOverride.IsUpperShot set value true
    function api:object/summon
