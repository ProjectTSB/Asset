#> asset:object/2080.aurora_missile/kill/main
#
#
#
# @within function asset:object/2080.aurora_missile/kill/

# 演出
    execute if entity @s[tag=!2080.Enhanced] rotated ~ 0 positioned ~ ~0.3 ~ run function asset:object/2080.aurora_missile/kill/vfx/normal
    execute if entity @s[tag=2080.Enhanced] rotated ~ 0 positioned ~ ~0.3 ~ run function asset:object/2080.aurora_missile/kill/vfx/enhanced
    particle dust_color_transition 0.000 1.000 0.886 2 0 0.235 1 ~ ~1.5 ~ 1.3 1.2 1.3 0 60
    playsound entity.evoker.prepare_summon hostile @a ~ ~ ~ 0.8 1.5 0

# ダメージ
# Enhancedタグがによって範囲が変わる
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによってオーロラの魔法の中に消えた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって空の塵になった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute if entity @s[tag=!2080.Enhanced] as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function api:damage/
    execute if entity @s[tag=2080.Enhanced] as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function api:damage/
    function api:damage/reset

# 各プレイヤーのMPを減らす
# Enhancedによって範囲が変わる
    execute if entity @s[tag=!2080.Enhanced] as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function asset:object/2080.aurora_missile/kill/mp_reduce
    execute if entity @s[tag=2080.Enhanced] as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function asset:object/2080.aurora_missile/kill/mp_reduce
