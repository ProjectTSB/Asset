#> asset:artifact/1314.topaz_broach/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1314.topaz_broach/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 演出
    particle minecraft:wax_on ~ ~1.2 ~ 1 0.4 1 0.2 20

# バリア付与
    data modify storage api: Argument.ID set value 345
    data modify storage api: Argument.Duration set value 400
    data modify storage api: Argument.FieldOverride.Barrier set value 4
    data modify storage api: Argument.FieldOverride.MaxBarrier set value 20
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
