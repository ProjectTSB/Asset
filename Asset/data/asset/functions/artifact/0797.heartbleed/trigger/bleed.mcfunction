#> asset:artifact/0797.heartbleed/trigger/bleed
#
# 
#
# @within function asset:artifact/0797.heartbleed/trigger/3.main

# damage
    data modify storage api: Argument.Damage set value 300.0f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    execute as @p[tag=this] run function api:damage/modifier
    function api:damage/
    function api:damage/reset

# 敵に出血を付与
    #data modify storage api: Argument.ID set value 307
    #execute store result storage api: Argument.FieldOverride.AppliedFrom int 1 run scoreboard players get @p[tag=this] UserID
    #function api:entity/mob/effect/give
    #function api:entity/mob/effect/reset

# 血しぶき
    execute at @s facing entity @p[tag=this] feet positioned ^ ^ ^0.5 run particle item redstone_block ~ ~1 ~ 0 1 0 0.15 50 force
