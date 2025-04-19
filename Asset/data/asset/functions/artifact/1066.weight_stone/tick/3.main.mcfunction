#> asset:artifact/1066.weight_stone/tick/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1066.weight_stone/tick/2.check_condition

# 低速落下を解除
    data modify storage api: Argument.ID set value 31
    function api:entity/mob/effect/remove/from_id
    data modify storage api: Argument.ID set value 81
    function api:entity/mob/effect/remove/from_id
    data modify storage api: Argument.ID set value 131
    function api:entity/mob/effect/remove/from_id
