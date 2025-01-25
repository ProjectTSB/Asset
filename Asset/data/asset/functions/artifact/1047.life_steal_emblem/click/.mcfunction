#> asset:artifact/1047.life_steal_emblem/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1047/click/


# 演出
    particle dust 0.45 0 0 1 ~ ~1 ~ 0.5 0.5 0.5 1 75 normal
    particle witch ~ ~ ~ 0.3 0 0.3 1 30 normal
    playsound entity.evoker.prepare_attack player @a[distance=..16] ~ ~ ~ 0.5 2 0
    playsound entity.blaze.death player @a[distance=..16] ~ ~ ~ 0.5 0 0

# 自身に最大HPの25%のダメージを与える
    function api:modifier/max_health/get
    execute store result storage api: Argument.Damage double 0.25 run data get storage api: Return.MaxHealth
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.FixedDamage set value 1b
    function api:damage/modifier
    function api:damage/
    function api:damage/reset

# 魂命バフを付与する
    data modify storage api: Argument.ID set value 260
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
