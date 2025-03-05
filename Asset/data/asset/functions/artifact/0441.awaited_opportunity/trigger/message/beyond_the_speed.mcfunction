#> asset:artifact/0441.awaited_opportunity/trigger/message/beyond_the_speed
#
# 俺が手に入れてやる･･･！その領域･･！“スピードの向こう側”を･･！！
#
# @within function asset:artifact/0441.awaited_opportunity/trigger/message/

# 待望の瞬間(ID:292)を削除
    data modify storage api: Argument.ID set value 292
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

# スピードの向こう側(ID:293)を付与
    data modify storage api: Argument.ID set value 293
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
