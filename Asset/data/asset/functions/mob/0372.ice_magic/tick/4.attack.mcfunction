#> asset:mob/0372.ice_magic/tick/4.attack
#
# 攻撃
#
# @within function asset:mob/0372.ice_magic/tick/3.on_ground

# 演出
    particle dust 0.3 0.6 100000000 1.5 ~ ~0.4 ~ 0.4 0.2 0.4 0 30 normal @a
    particle rain ~ ~0.4 ~ 0.1 0.1 0.1 0.1 20 normal @a
    playsound entity.dolphin.splash hostile @a ~ ~ ~ 0.4 1 0
    playsound entity.dolphin.splash hostile @a ~ ~ ~ 0.4 0.5 0

# ダメージ
    data modify storage api: Argument.Damage set value 32f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    #data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによってオーロラの魔法の中に消えた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    #data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって空の塵になった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..1.5] run function api:damage/
    function api:damage/reset

# ノーマル以上ならデバフを付与
    execute if predicate api:global_vars/difficulty/min/normal as @a[tag=!PlayerShouldInvulnerable,distance=..1.5] run function asset:mob/0372.ice_magic/tick/5.debuff

# 当たったなら消滅
    execute if entity @p[tag=!PlayerShouldInvulnerable,distance=..1.5] run kill @s
