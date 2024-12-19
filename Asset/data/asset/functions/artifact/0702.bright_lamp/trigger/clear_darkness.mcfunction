#> asset:artifact/0702.bright_lamp/trigger/clear_darkness
#
# 暗闇を解除する
#
# @within function asset:artifact/0702.bright_lamp/trigger/3.main

# 解除
    data modify storage api: Argument.ID set value 124
    function api:entity/mob/effect/remove/from_id
