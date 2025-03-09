#> asset:artifact/0860.angel_wing/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0860.angel_wing/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/chest

# ここから先は神器側の効果の処理を書く

# バフを付与
    data modify storage api: Argument.ID set value 310
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
