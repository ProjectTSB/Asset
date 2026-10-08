#> asset:effect/0400.dual_rhythm_boost/given/
#
# Effectが付与された時の処理
#
# @within function asset:effect/0400.dual_rhythm_boost/_/given

# 補正を追加する
    data modify storage api: Argument.UUID set value [I;1,3,400,0]
    data modify storage api: Argument.Amount set from storage asset:context this.Amount
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/base/add

# 付与の演出を再生する
    function asset:effect/0400.dual_rhythm_boost/play_effect
