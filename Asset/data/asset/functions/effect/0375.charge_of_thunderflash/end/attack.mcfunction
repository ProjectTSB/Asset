#> asset:effect/0375.charge_of_thunderflash/end/attack
#
#
#
# @within function asset:effect/0375.charge_of_thunderflash/end/

# playsound
    playsound ogg:item.trident.throw1 player @a[distance=..7] ~ ~ ~ 0.7 0.6 1
    playsound ogg:item.trident.throw1 player @a[distance=..7] ~ ~ ~ 0.7 0.8 1
    playsound minecraft:entity.glow_squid.squirt player @a[distance=..7] ~ ~ ~ 1 2

# 演出用Object
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Color:16765240,Frames:[20335,20336,20337],Scale:[8f,8f,0.1f],Transformation:{left_rotation:[0.561f,-0.43f,0.43f,0.561f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute anchored eyes positioned ^ ^ ^1.5 positioned ~ ~-0.6 ~ run function api:object/summon

    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Color:16765240,Frames:[20335,20336,20337],Scale:[8f,8f,0.1f],Transformation:{left_rotation:[0.561f,-0.43f,0.43f,0.561f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute facing ^ ^ ^-1 anchored eyes positioned ^ ^ ^1.5 positioned ~ ~-0.6 ~ run function api:object/summon

    # data modify storage api: Argument.ID set value 2001
    # data modify storage api: Argument.FieldOverride set value {Item:{id:"minecraft:leather_horse_armor"},Color:16765788,Frames:[20356,20357,20358,20359,20360,20361,20362,Scale:[10f,10f,0.1f],Transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    # execute rotated ~ 90 positioned ~ ~0.2 ~ run function api:object/summon

# 演出
    execute positioned ~ ~0.3 ~ rotated ~ 0 run function asset:effect/0375.charge_of_thunderflash/end/vfx

# ダメージ
    tag @s add 375.This
    function api:damage/single_damage_session/open
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..5] run function asset:effect/0375.charge_of_thunderflash/end/damage.m with storage asset:context this.Damage.First
    function api:damage/single_damage_session/close
    tag @s add 375.This
