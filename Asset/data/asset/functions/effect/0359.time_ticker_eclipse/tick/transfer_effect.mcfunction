#> asset:effect/0359.time_ticker_eclipse/tick/transfer_effect
#
#
#
# @within function asset:effect/0359.time_ticker_eclipse/tick/

# 昼なら357、夜なら358に引継ぎ
    execute if predicate lib:is_day run data modify storage api: Argument.ID set value 357
    execute if predicate lib:is_night run data modify storage api: Argument.ID set value 358
    execute store result storage api: Argument.Duration int 0.9999999999 run data get storage asset:context Duration
    data modify storage api: Argument.FieldOverride.Modifier set from storage asset:context this.Modifier
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
