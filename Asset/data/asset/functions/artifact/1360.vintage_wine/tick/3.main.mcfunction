#> asset:artifact/1360.vintage_wine/tick/3.main
#
#
#
# @within function asset:artifact/1360.vintage_wine/tick/2.check_condition

# 次の付与までの待ち時間を設定
    scoreboard players set @s 11S.Tick 40

# 最大スタックなら再付与しない
    data modify storage api: Argument.ID set value 369
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect{Stack:10} run return 0

# 固有バフを付与
    data modify storage api: Argument.ID set value 369
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
