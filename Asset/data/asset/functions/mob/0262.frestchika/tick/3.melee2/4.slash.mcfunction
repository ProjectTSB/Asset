#> asset:mob/0262.frestchika/tick/3.melee2/4.slash
#
#
#
# @within function asset:mob/0262.frestchika/tick/3.melee2/1.melee2

# ダメージ
    data modify storage api: Argument.Damage set value 50.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..1] at @s run function api:damage/
    function api:damage/reset

# 演出
    execute as @a[gamemode=!spectator,distance=..1] at @s run particle dust 0.224 0.69 1 2 ~ ~1 ~ 0.6 0.6 0.6 0 50 normal @a
