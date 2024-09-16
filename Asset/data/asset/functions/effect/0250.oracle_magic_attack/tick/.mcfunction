#> asset:effect/0250.oracle_magic_attack/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0250.oracle_magic_attack/_/tick

# 演出
    execute if predicate lib:random_pass_per/40 run particle enchant ~ ~2 ~ 0.5 0.4 0.5 0 1
