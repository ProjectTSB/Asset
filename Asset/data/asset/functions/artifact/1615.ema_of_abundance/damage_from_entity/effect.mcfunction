#> asset:artifact/1615.ema_of_abundance/damage_from_entity/effect
#
# 空腹を与える処理
#
# @within function asset:artifact/1615.ema_of_abundance/damage_from_entity/2.main

# 空腹を付与(満腹度消費度＝0.005*Stack*Duration,4に達する度満腹度1減少)
    data modify storage api: Argument.ID set value 128
    data modify storage api: Argument.Stack set value 40
    data modify storage api: Argument.Duration set value 40
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
