#> asset:effect/0399.dual_rhythm_guard/given/
#
# Effectが付与された時の処理
#
# @within function asset:effect/0399.dual_rhythm_guard/_/given

# 補正を追加する
    data modify storage api: Argument.UUID set value [I;1,3,399,0]
    data modify storage api: Argument.Amount set from storage asset:context this.Amount
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/base/add

# 付与の演出を再生する
    function asset:effect/0399.dual_rhythm_guard/play_effect
