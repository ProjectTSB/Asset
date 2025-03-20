#> asset:mob/0262.frestchika/tick/2.melee/4.slash
#
#
#
# @within function asset:mob/0262.frestchika/tick/2.melee/1.melee

# ダメージ設定
    data modify storage api: Argument.Damage set value 35.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..1] at @s run function api:damage/
    function api:damage/reset

# 演出
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2
    execute as @a[gamemode=!spectator,distance=..1] at @s run particle dust 0.224 0.69 1 2 ~ ~1 ~ 0.6 0.6 0.6 0 50 normal @a
