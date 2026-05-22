#> asset:object/2080.aurora_missile/kill/main
#
#
#
# @within function asset:object/2080.aurora_missile/kill/

# 演出
    playsound entity.evoker.prepare_summon hostile @a ~ ~ ~ 0.8 1.5 0
    particle dust_color_transition 0.4 1 0.8 1.5 0.5 0.65 1 ~ ~1.5 ~ 1.2 1.2 1.2 0 12

# 演出用Object
    data modify storage api: Argument.ID set value 2276
    data modify storage api: Argument.FieldOverride.Scale set value 4f
    function api:object/summon

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによってオーロラの魔法の中に消えた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって空の塵になった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute positioned ~-2 ~ ~-2 as @a[tag=!PlayerShouldInvulnerable,dx=3,dx=0.5,dx=3] run function api:damage/
    function api:damage/reset

# 各プレイヤーのMPを減らす
    execute positioned ~-2 ~ ~-2 as @a[tag=!PlayerShouldInvulnerable,dx=3,dx=0.5,dx=3] run function asset:object/2080.aurora_missile/kill/mp_reduce
