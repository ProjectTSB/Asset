#> asset:artifact/1209.sinful_scythe/trigger/effect
#
#
#
# @within function asset:artifact/1209.sinful_scythe/trigger/damage

# エフェクト付与
    data modify storage api: Argument.ID set value 319
    data modify storage api: Argument.FieldOverride.Damage set value 200
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute as @e[type=#lib:living,type=!player,tag=!Victim,tag=!Uninterferable,distance=..5,sort=random,limit=2] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
