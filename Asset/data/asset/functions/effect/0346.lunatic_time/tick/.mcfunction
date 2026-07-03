#> asset:effect/0346.lunatic_time/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0346.lunatic_time/_/tick

# 演出
    execute if predicate lib:random_pass_per/8 run particle flame ~ ~1.2 ~ 0.6 0.4 0.6 0 1 normal @a
    execute if predicate lib:random_pass_per/4 run particle dragon_breath ~ ~1.2 ~ 0.6 0.4 0.6 0 1 normal @a

# MPが一定割合以下かチェックする
    function asset:effect/0346.lunatic_time/tick/check_mp_per
