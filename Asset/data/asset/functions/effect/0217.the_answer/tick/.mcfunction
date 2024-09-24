#> asset:effect/0217.the_answer/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0217.the_answer/_/tick

# 演出
    execute if predicate lib:random_pass_per/42 run particle portal ~ ~1.2 ~ 0 0 0 0.42 1 force @a
    execute if predicate lib:random_pass_per/42 run particle reverse_portal ~ ~1.2 ~ 0 0 0 0.42 1 force @a

# MPを42に固定
    data modify storage api: Argument.MP set value 42
    function api:mp/set
