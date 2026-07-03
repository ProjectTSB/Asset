#> asset:artifact/1116.honey_tart/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1116.honey_tart/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    particle wax_on ~ ~1.2 ~ 0 0 0 20 50 normal @a
    playsound ogg:random.levelup player @a ~ ~ ~ 0.3 1.5

# エフェクトを付与
    data modify storage api: Argument.ID set value 270
    data modify storage api: Argument.Duration set value 200
    data modify storage api: Argument.FieldOverride.Heal set value 1.5
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
