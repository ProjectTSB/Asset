#> asset:object/2156.haruclaire_icepillar/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2156.haruclaire_icepillar/tick/

# 演出
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 1 0.7
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 1 0.5
    playsound entity.breeze.jump hostile @a ~ ~ ~ 1 0.5

# 弾召喚
    data modify storage api: Argument.ID set value 2155
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=area_effect_cloud,tag=2156.AttackRotation,sort=nearest,limit=1] Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute rotated as @e[type=area_effect_cloud,tag=2156.AttackRotation,sort=nearest,limit=1] positioned ~ ~ ~ positioned ^ ^ ^0.8 run function api:object/summon
