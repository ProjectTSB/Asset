#> asset:artifact/1114.fairy_macaron/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1114.fairy_macaron/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    particle dust 1000000000 -0.3 -0.2 1 ~ ~1.2 ~ 0.6 0.4 0.6 0 30 normal @a
    particle wax_off ~ ~1.2 ~ 0 0 0 8 20 normal @a
    playsound ogg:random.levelup player @a ~ ~ ~ 0.4 1.8
    playsound minecraft:entity.allay.item_given player @a ~ ~ ~ 1.7 1.2

# 体力を5回復する
    data modify storage api: Argument.Heal set value 5
    function api:heal/modifier
    function api:heal/
    function api:heal/reset

# バリアを得る
    data modify storage api: Argument.ID set value 268
    data modify storage api: Argument.Duration set value 600
    data modify storage api: Argument.FieldOverride.Barrier set value 5
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
