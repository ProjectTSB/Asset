#> asset:effect/0373.longevity_your_thoughts/effect/set
#
# 初期化処理
#
# @within function
#   asset:effect/0373.longevity_your_thoughts/given/

# MP回復量
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    data modify storage api: Argument.Amount set from storage asset:context this.Amount
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/mp_heal/add
