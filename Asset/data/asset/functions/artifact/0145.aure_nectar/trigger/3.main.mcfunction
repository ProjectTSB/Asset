#> asset:artifact/0145.aure_nectar/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0145.aure_nectar/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    particle minecraft:heart ~ ~0.5 ~ 0.3 0.5 0.3 1 5 force @s
    playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1

# HP回復
    execute store result storage api: Argument.Heal double 0.0008 run attribute @s generic.max_health get 100
    function api:heal/modifier
    function api:heal/
    function api:heal/reset

# リジェネ
    data modify storage api: Argument.ID set value 351
    data modify storage api: Argument.Stack set value 1
    data modify storage api: Argument.Duration set value 100
    data modify storage api: Argument.FieldOverride.HealPer set value 0.015d
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
