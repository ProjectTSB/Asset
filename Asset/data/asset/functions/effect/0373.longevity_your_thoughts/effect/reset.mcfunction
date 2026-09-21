#> asset:effect/0373.longevity_your_thoughts/effect/reset
#
# エフェクトのリセット処理
#
# @within function
#   asset:effect/0373.longevity_your_thoughts/end/
#   asset:effect/0373.longevity_your_thoughts/re-given/
#   asset:effect/0373.longevity_your_thoughts/tick/update_effect

# 補正をリセット
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    function api:modifier/mp_heal/remove
