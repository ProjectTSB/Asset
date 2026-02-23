#> asset:artifact/1328.snowball_canon/trigger/charge
#
#
#
# @within function asset:artifact/1328.snowball_canon/trigger/2.check_condition

# チャージ演出
    execute if data storage api: Return.Effect.Field{IsFullCharge:false} if predicate lib:random_pass_per/20 anchored eyes run particle snowflake ^-0.3 ^-0.4 ^0.5 0 0 0 0.05 1
    execute if data storage api: Return.Effect.Field{IsFullCharge:false} run playsound ogg:mob.breeze.charge1 player @a ~ ~ ~ 0.4 0.7

    execute if data storage api: Return.Effect.Field{IsFullCharge: true} if predicate lib:random_pass_per/50 anchored eyes run particle snowflake ^-0.3 ^-0.4 ^0.5 0 0 0 0.2 1
    execute if data storage api: Return.Effect.Field{IsFullCharge: true} run playsound ogg:mob.breeze.charge1 player @a ~ ~ ~ 0.4 1.2

# チャージ用Effect付与
    data modify storage api: Argument.ID set value 347
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
