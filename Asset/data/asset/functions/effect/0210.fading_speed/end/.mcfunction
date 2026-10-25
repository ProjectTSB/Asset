#> asset:effect/0210.fading_speed/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0210.fading_speed/_/end

# 補正を削除する
    function asset:effect/0210.fading_speed/modifier/remove

# 薄れゆく速さ(デバフ)を付与
    data modify storage api: Argument.ID set value 211
    data modify storage api: Argument.Duration set from storage asset:context this.Debuff.Duration
    data modify storage api: Argument.FieldOverride.Amount set from storage asset:context this.Debuff.Amount
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
