#> asset:artifact/1143.achilles/damage_entity/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1143.achilles/damage_entity/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/legs

# デバフを付与
    data modify storage api: Argument.ID set value 299
    data modify storage api: Argument.Duration set value 400
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
