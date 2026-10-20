#> asset:artifact/1623.palermo/kill/3.main
#
#
#
# @within function asset:artifact/1623.palermo/kill/2.check_condition

#再装填音

#kill時10まで加速弾付与
    # スタックを上書きして再付与する
    data modify storage api: Argument.ID set value 410
    data modify storage api: Argument.Stack set value 10
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
