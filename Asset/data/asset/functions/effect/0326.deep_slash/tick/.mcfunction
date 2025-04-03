#> asset:effect/0326.deep_slash/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0326.deep_slash/_/tick

# 走っている間のみ実行
    execute if predicate lib:is_sprinting run function asset:effect/0326.deep_slash/tick/dashing
