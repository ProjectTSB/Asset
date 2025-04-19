#> asset:artifact/1137.over_pulse_headgear/tick/night_vision/give
#
#
#
# @within function asset:artifact/1137.over_pulse_headgear/tick/3.main

# タグ付け
    tag @s add VL.NightVision

# 暗視を付与
    data modify storage api: Argument.ID set value 337
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
