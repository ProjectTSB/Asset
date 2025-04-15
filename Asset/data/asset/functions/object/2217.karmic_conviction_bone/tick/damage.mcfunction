#> asset:object/2217.karmic_conviction_bone/tick/damage
#
#
#
# @within function asset:object/2217.karmic_conviction_bone/tick/

# 演出
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2
    playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1 0
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 0.6

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Sword
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..5] run function api:damage/
    function api:damage/reset
