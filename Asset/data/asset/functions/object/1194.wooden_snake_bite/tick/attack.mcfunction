#> asset:object/1194.wooden_snake_bite/tick/attack
#
# 攻撃
#
# @within function asset:object/1194.wooden_snake_bite/tick/
#> Private
# @private
    #declare score_holder $UserID

#vfx
    particle minecraft:crit ~ ~1 ~ 0 0 0 0.3 20 normal @a

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0] run function api:damage/
    function api:damage/reset

# MP回復量バフを付与する
    data modify storage api: Argument.ID set value 405
    data modify storage api: Argument.Duration set from storage asset:context this.Duration
    data modify storage api: Argument.FieldOverride.MPModifier set from storage asset:context this.MPModifier
    execute as @a if score @s UserID = $UserID Temporary run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
