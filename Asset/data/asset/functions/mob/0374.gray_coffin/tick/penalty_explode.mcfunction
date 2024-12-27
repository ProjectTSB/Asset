#> asset:mob/0374.gray_coffin/tick/penalty_explode
#
# 爆発
#
# @within function asset:mob/0374.gray_coffin/tick/penalty_ready

# 演出
    particle explosion_emitter ~ ~1 ~ 0.2 0.3 0.2 1 1 normal @a
    particle soul_fire_flame ~ ~1 ~ 0.2 0.3 0.2 0.3 100 normal @a
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 0.5 0
    playsound block.sculk_shrieker.shriek hostile @a ~ ~ ~ 1 0.8 0

# ダメージ
    data modify storage api: Argument.Damage set value 50f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    #data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"api:","interpret":true}]}'
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..5] run function api:damage/
    function api:damage/reset

# 消滅
    function api:mob/remove
