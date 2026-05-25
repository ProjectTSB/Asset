#> asset:effect/0358.time_ticker_night/tick/transfer_effect.m
#
#
#
# @within function asset:effect/0358.time_ticker_night/tick/

# 効果時間とフィールドを引き継いで夜バフを付与
    $data modify storage api: Argument.ID set value $(ID)
    execute store result storage api: Argument.Duration int 0.9999999999 run data get storage asset:context Duration
    data modify storage api: Argument.FieldOverride.Modifier set from storage asset:context this.Modifier
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
