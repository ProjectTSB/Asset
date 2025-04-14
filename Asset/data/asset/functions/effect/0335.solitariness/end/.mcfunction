#> asset:effect/0335.solitariness/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0335.solitariness/_/end

# 消す
    function asset:effect/0335.solitariness/modifier/remove

# 自己嫌悪を付与
    data modify storage api: Argument.ID set value 336
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
