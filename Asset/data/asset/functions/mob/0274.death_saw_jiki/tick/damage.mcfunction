#> asset:mob/0274.death_saw_jiki/tick/damage
#
#
#
# @within function asset:mob/0274.death_saw_jiki/tick/

# 演出
    particle dust 1.000 0.741 0.141 1.3 ~ ~1.2 ~ 0.5 0.4 0.5 0 20 normal
    playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.7 1.5 0
    playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.7 2.0 0

# ダメージ
        data modify storage api: Argument.Damage set from storage asset:context this.Damage
        data modify storage api: Argument.AttackType set value "Physical"
        data modify storage api: Argument.ElementType set value "Thunder"
        function api:damage/modifier
        execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!PlayerShouldInvulnerable,dx=0] run function api:damage/
        function api:damage/reset

# クールタイムを与える
    data modify storage asset:context this.AttackCT._ set from storage asset:context this.AttackCT.Max
