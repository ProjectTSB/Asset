#> asset:effect/0321.craving_recoil/given/
#
# Effectが付与された時の処理
#
# @within function asset:effect/0321.craving_recoil/_/given

# 被回復量を-70%
    data modify storage api: Argument.UUID set value [I;1,3,321,0]
    data modify storage api: Argument.Amount set value -0.7
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/receive_heal/add
