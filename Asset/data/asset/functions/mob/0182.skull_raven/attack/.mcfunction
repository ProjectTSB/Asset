#> asset:mob/0182.skull_raven/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/182/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 演出
    execute at @p[tag=Victim,distance=..60] run particle minecraft:lava ~ ~0.5 ~ 0.8 0.8 0.8 0.1 20 normal @p
    execute at @p[tag=Victim,distance=..60] run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 0.8 0.8 0

# ハードなら打ち上げ
    execute if predicate api:global_vars/difficulty/min/3_blessless as @p[tag=Victim,distance=..60] run function asset:mob/0182.skull_raven/attack/levitation

# ダメージ
    data modify storage api: Argument.Damage set value 18.0d
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって燃え尽き、灰となった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって魂諸共焼失した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    function api:damage/modifier
    execute as @p[tag=Victim,distance=..60] run function api:damage/
    function api:damage/reset
