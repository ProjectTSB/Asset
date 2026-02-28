#> asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_attack_drone.m
#
# ブルートフォースアタック
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/

# ATTACKドローン召喚
    data modify storage api: Argument.ID set value 2260
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.AttackDrone
    function api:object/summon
