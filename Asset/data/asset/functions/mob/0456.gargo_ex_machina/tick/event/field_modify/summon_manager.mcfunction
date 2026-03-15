#> asset:mob/0456.gargo_ex_machina/tick/event/field_modify/summon_manager
#
# フィールド・モディファイ
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/field_modify/event_start

# マネージャー召喚
    data modify storage api: Argument.ID set value 2265
    data modify storage api: Argument.FieldOverride.AttackCount set value 4
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.FieldModify
    execute store result storage api: Argument.FieldOverride.UUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon
