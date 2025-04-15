#> asset:artifact/1137.over_pulse_headgear/tick/night_vision/remove
#
#
#
# @within function asset:artifact/1137.over_pulse_headgear/tick/3.main

# タグ解除
    tag @s remove VL.NightVision

# 暗視を削除
    data modify storage api: Argument.ID set value 337
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
