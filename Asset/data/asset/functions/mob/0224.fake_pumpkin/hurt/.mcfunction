#> asset:mob/0224.fake_pumpkin/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/224/hurt

# 割合ダメージ
    execute as @p[tag=Attacker] run function api:modifier/max_health/get
    execute store result storage api: Argument.Damage double 0.020 run data get storage api: Return.MaxHealth 10
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.FixedDamage set value 1b
    data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは呪われてしまった！","with":[{"selector":"@s"}]}]']
    function api:damage/modifier
    execute as @p[tag=Attacker,distance=..50] run function api:damage/
    function api:damage/reset

# 演出
    particle block_marker barrier ~ ~1.8 ~ 0 0 0 0 0
    playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 2

# Blesslessでは周囲のプレイヤーに被ダメ上昇を付与するように
    execute if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0224.fake_pumpkin/hurt/debuff

# 撤退
    function api:mob/remove
