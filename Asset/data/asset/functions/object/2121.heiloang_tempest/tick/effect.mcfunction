#> asset:object/2121.heiloang_tempest/tick/effect
#
# Objectのtick時の処理
#
# @within asset:object/2121.heiloang_tempest/tick/

# エフェクト
    data modify storage api: Argument.ID set value 125
    execute if predicate api:global_vars/difficulty/max/normal run data modify storage api: Argument.Stack set value 20
    execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage api: Argument.Stack set value 40
    data modify storage api: Argument.Duration set value 5
    execute as @a[distance=..7] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
