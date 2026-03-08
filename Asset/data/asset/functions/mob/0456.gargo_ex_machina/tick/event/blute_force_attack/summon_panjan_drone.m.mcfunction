#> asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_panjan_drone.m
#
# ブルートフォースアタック
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/

# ATTACKドローン召喚
    data modify storage api: Argument.ID set value 2262
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function asset:mob/0456.gargo_ex_machina/tick/util/assing_object_id
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.PanjanDrone
    data modify storage api: Argument.FieldOverride.FlameDamage set from storage asset:context this.Damage.PanjanDrone.Flame
    function api:object/summon
