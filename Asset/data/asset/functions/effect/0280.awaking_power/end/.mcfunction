#> asset:effect/0280.awaking_power/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0280.awaking_power/_/end

# 補正を削除
    function asset:effect/0280.awaking_power/modifier/remove

# 中毒(ID:281)を付与
    data modify storage api: Argument.ID set value 281
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
