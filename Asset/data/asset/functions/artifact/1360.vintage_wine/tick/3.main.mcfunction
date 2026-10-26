#> asset:artifact/1360.vintage_wine/tick/3.main
#
#
#
# @within function asset:artifact/1360.vintage_wine/tick/2.check_condition

#> Private
# @private
    #declare score_holder $11S.Stack
    #declare score_holder $11S.MaxStack

# 次の付与までの待ち時間を設定
    scoreboard players set @s 11S.Tick 40

# 最大スタックなら再付与しない
    scoreboard players set $11S.MaxStack Temporary 10
    data modify storage api: Argument.ID set value 369
    function api:entity/mob/effect/get/from_id
    execute store result score $11S.Stack Temporary run data get storage api: Return.Effect.Stack

# 固有バフを付与
    data modify storage api: Argument.ID set value 369
    execute unless score $11S.Stack Temporary = $11S.MaxStack Temporary run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $11S.Stack Temporary
    scoreboard players reset $11S.MaxStack Temporary
