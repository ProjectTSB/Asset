#> asset:mob/1004.tultaria/tick/base_move/loyalty_shield/
#
# 幻影がいる限りはカッチカチになる
#
# @within function asset:mob/1004.tultaria/tick/

# 防御アップ！
#    data modify storage api: Argument.ID set value 125
#    data modify storage api: Argument.Stack set value 20
#    data modify storage api: Argument.Duration set value 5
#    function api:entity/mob/effect/give
#    function api:entity/mob/effect/reset

# 演出
    particle minecraft:end_rod ~ ~1 ~ 0.3 0.5 0.3 0 1
