#> asset:effect/0211.fading_speed/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0211.fading_speed/_/re-given

# 演出
    particle minecraft:dragon_breath ~ ~1 ~ 0.1 0.1 0.1 0.03 100
    playsound minecraft:entity.evoker.prepare_summon player @a

# 最大体力の50%分の固定ダメージを受ける
    execute store result storage api: Argument.Damage double 0.5 run attribute @s generic.max_health get
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.FixedDamage set value true
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは速度の代償を払った","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/
    function api:damage/reset

# 薄れゆく速さデバフを解除し、薄れゆく速さバフを付与
    data modify storage api: Argument.ID set value 211
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

    data modify storage api: Argument.ID set value 210
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
