#> asset:mob/0456.gargo_ex_machina/tick/act/phase_2/summon_panjan_drone_near
#
# Mobのtick時の処理
#
# @within asset:mob/0456.gargo_ex_machina/tick/act/phase_2/

# 自身左右にドローン召喚
    data modify storage api: Argument.ID set value 2262
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function asset:mob/0456.gargo_ex_machina/tick/util/assing_object_id
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.PanjanDrone
    data modify storage api: Argument.FieldOverride.FlameDamage set from storage asset:context this.Damage.PanjanDrone.Flame
    data modify storage api: Argument.FieldOverride.IsMove set value true
    execute rotated ~ 0 facing entity @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] feet positioned ^12 ^0.01 ^ run function api:object/summon
    data modify storage api: Argument.ID set value 2262
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function asset:mob/0456.gargo_ex_machina/tick/util/assing_object_id
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.PanjanDrone
    data modify storage api: Argument.FieldOverride.FlameDamage set from storage asset:context this.Damage.PanjanDrone.Flame
    data modify storage api: Argument.FieldOverride.IsMove set value true
    execute rotated ~ 0 facing entity @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] feet positioned ^-12 ^0.01 ^ run function api:object/summon
