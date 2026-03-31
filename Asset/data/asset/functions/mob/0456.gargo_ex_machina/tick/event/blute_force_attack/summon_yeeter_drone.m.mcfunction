#> asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_yeeter_drone.m
#
# ブルートフォースアタック
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/**

# YEERERドローン召喚
    data modify storage api: Argument.ID set value 2261
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function asset:mob/0456.gargo_ex_machina/tick/util/assing_object_id
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.YeeterDrone
    $data modify storage api: Argument.FieldOverride.IsRotate set value $(IsRotate)
    $data modify storage api: Argument.FieldOverride.IsRotateInverse set value $(IsRotateInverse)
    function api:object/summon
