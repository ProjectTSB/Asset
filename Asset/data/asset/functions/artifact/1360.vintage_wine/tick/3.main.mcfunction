#> asset:artifact/1360.vintage_wine/tick/3.main
#
#
#
# @within function asset:artifact/1360.vintage_wine/tick/2.check_condition

#> Private
# @private
    #declare score_holder $Stack

# 固有バフチェック
    data modify storage api: Argument.ID set value 369
    function api:entity/mob/effect/get/from_id

# チャージ+1
    execute store result storage api: Argument.FieldOverride.Charge int -1 run data get storage api: Return.Effect.Field.Charge -1.000000001

# チャージが0なら1に初期化
    execute if data storage api: Argument.FieldOverride{Charge:0} run data modify storage api: Argument.FieldOverride.Charge set value 1

# (チャージ / N) + 1をスタックとする
    execute store result score $Stack Temporary run data get storage api: Argument.FieldOverride.Charge
    scoreboard players operation $Stack Temporary /= $40 Const
    scoreboard players add $Stack Temporary 1
# 最大スタック
    scoreboard players operation $Stack Temporary < $10 Const

# tellraw @a {"storage":"api:","nbt":"Argument.FieldOverride.Charge"}

# 固有バフを付与
    data modify storage api: Argument.ID set value 369
    execute store result storage api: Argument.Stack int 1 run scoreboard players get $Stack Temporary
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセマラ
    scoreboard players reset $Stack Temporary
