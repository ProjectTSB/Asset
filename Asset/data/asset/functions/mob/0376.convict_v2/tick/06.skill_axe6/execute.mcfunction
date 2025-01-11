#> asset:mob/0376.convict_v2/tick/06.skill_axe6/execute
#
#
#
# @within function asset:mob/0376.convict_v2/tick/06.skill_axe6/main

# 演出
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 0.5
    playsound minecraft:block.end_portal.spawn hostile @a ~ ~ ~ 1 0.5
    function asset:mob/0376.convict_v2/tick/common/particle/particle_2

# 割合ダメージ
    execute as @p[tag=!PlayerShouldInvulnerable,distance=..3] run function api:data_get/health
    execute if predicate api:global_vars/difficulty/min/hard store result storage lib: Argument.Damage float 0.95 run data get storage api: Health
    execute if predicate api:global_vars/difficulty/normal store result storage lib: Argument.Damage float 0.50 run data get storage api: Health
    execute if predicate api:global_vars/difficulty/easy store result storage lib: Argument.Damage float 0.20 run data get storage api: Health
# 第一属性
    data modify storage lib: Argument.AttackType set value "Physical"
# 補正をしない
    data modify storage lib: Argument.FixedDamage set value true
    function lib:damage/modifier
    execute as @p[tag=!PlayerShouldInvulnerable,distance=..3] run function lib:damage/

# エフェクト
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function asset:mob/0376.convict_v2/tick/common/effect

# リセット
    function lib:damage/reset
