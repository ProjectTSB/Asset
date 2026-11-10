#> asset:artifact/1657.phoenix_shield/trigger/2.check_condition/is_max_stack
#
# 火種が最大スタックならCanUsedを削除する
#
# @within function asset:artifact/1657.phoenix_shield/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $1A1.Stack
    #declare score_holder $1A1.MaxStack

# 火種を持っていないなら何もしない
    data modify storage api: Argument.ID set value 433
    function api:entity/mob/effect/get/from_id
    execute unless data storage api: Return.Effect run return fail

# 現在のスタックと最大スタックを取得
    execute store result score $1A1.Stack Temporary run data get storage api: Return.Effect.Stack
    execute store result score $1A1.MaxStack Temporary run data get storage api: Return.Effect.Field.MaxStack

# 最大ならCanUsedを削除し、記録を発動に必要な値で止める
    execute if score $1A1.Stack Temporary >= $1A1.MaxStack Temporary run tag @s remove CanUsed
    execute if score $1A1.Stack Temporary >= $1A1.MaxStack Temporary if score @s 1A1.DamageSum matches 50001.. run scoreboard players set @s 1A1.DamageSum 50000

# リセット
    scoreboard players reset $1A1.Stack Temporary
    scoreboard players reset $1A1.MaxStack Temporary
