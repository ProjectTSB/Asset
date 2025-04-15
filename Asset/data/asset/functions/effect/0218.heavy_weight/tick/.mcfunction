#> asset:effect/0218.heavy_weight/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0218.heavy_weight/_/tick

# 低速落下を解除
    data modify storage api: Argument.ID set value 31
    function api:entity/mob/effect/remove/from_id
    data modify storage api: Argument.ID set value 81
    function api:entity/mob/effect/remove/from_id
    data modify storage api: Argument.ID set value 131
    function api:entity/mob/effect/remove/from_id
