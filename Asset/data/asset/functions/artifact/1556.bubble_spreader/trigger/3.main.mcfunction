#> asset:artifact/1556.bubble_spreader/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1556.bubble_spreader/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand
# 発射用のeffect付与
    data modify storage api: Argument.ID set value 378
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
