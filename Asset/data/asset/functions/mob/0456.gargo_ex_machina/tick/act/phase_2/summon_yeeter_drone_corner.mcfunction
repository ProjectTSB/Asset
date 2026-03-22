#> asset:mob/0456.gargo_ex_machina/tick/act/phase_2/summon_yeeter_drone_corner
#
# Mobのtick時の処理
#
# @within asset:mob/0456.gargo_ex_machina/tick/act/phase_2/

# 対角にドローン召喚
    data modify storage api: Argument.ID set value 2261
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function asset:mob/0456.gargo_ex_machina/tick/util/assing_object_id
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.YeeterDrone
    data modify storage api: Argument.FieldOverride.IsRotate set value false
    data modify storage api: Argument.FieldOverride.IsRotateInverse set value false
    execute at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] positioned ^16 ^ ^23 rotated ~180 0 run function api:object/summon
    data modify storage api: Argument.ID set value 2261
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function asset:mob/0456.gargo_ex_machina/tick/util/assing_object_id
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.YeeterDrone
    data modify storage api: Argument.FieldOverride.IsRotate set value false
    data modify storage api: Argument.FieldOverride.IsRotateInverse set value false
    execute at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] positioned ^-16 ^ ^-23 rotated ~0 0 run function api:object/summon
