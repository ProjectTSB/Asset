#> asset:effect/0335.solitariness/remove/
#
# Effectが削除された時の処理
#
# @within function asset:effect/0335.solitariness/_/remove

# 消す
    function asset:effect/0335.solitariness/modifier/remove

# 自己嫌悪を付与
    data modify storage api: Argument.ID set value 336
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
