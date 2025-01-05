#> asset:object/2075.thunder_magic/tick/thunder
#
#
#
# @within function asset:object/2075.thunder_magic/tick/

# 演出
    particle dust 1 1 0 1 ~ ~3 ~ 0.7 3 0.7 0 150
    particle dust 1 1 0 1 ~ ~5 ~ 0.1 5 0.1 0 150
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 5
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 50

    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.7 2 0
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.7 2 0
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.7 0 0

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..1.5] at @s run function api:damage/
    function api:damage/reset

# 自害
    kill @s
