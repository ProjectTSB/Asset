#> asset:artifact/1074.farothdal/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1074.farothdal/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    data modify storage asset:artifact IgnoreItemUpdate set value true
    function asset:artifact/common/use/feet

# ここから先は神器側の効果の処理を書く

# 効果
    data modify storage api: Argument.ID set value 230
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
