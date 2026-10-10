#> asset:artifact/1655.ocean_heart/trigger/buff
#
# @within function asset:artifact/1655.ocean_heart/trigger/3.main

#> Private
# @private
    #declare score_holder $Stack
    #declare score_holder $MaxStack

# 最大スタック数
    scoreboard players set $MaxStack Temporary 4

# 既存のスタック数を取得して上限まで増やす
    data modify storage api: Argument.ID set value 406
    function api:entity/mob/effect/get/from_id
    scoreboard players set $Stack Temporary 0
    execute if data storage api: Return.Effect.Stack store result score $Stack Temporary run data get storage api: Return.Effect.Stack
    scoreboard players add $Stack Temporary 1
    scoreboard players operation $Stack Temporary < $MaxStack Temporary

# 15秒間のバフを付与する
    data modify storage api: Argument.ID set value 406
    data modify storage api: Argument.Duration set value 300
    execute store result storage api: Argument.Stack int 1 run scoreboard players get $Stack Temporary
    data modify storage api: Argument.StackOperation set value "forceReplace"
    data modify storage api: Argument.FieldOverride.Modifier set value 0.05d
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $Stack Temporary
    scoreboard players reset $MaxStack Temporary
