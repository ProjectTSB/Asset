#> asset:mob/0456.gargo_ex_machina/tick/event/field_modify/summon_field
#
# フィールド・モディファイ
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/field_modify/event_start

# マネージャー召喚
    data modify storage api: Argument.ID set value 2266
    execute if entity @s[tag=CO.Aec.FieldModify.A] run data modify storage api: Argument.FieldOverride.Model set value 20591
    execute if entity @s[tag=CO.Aec.FieldModify.A] run data modify storage api: Argument.FieldOverride.Color set value 0
    execute if entity @s[tag=CO.Aec.FieldModify.B] run data modify storage api: Argument.FieldOverride.Model set value 20592
    execute if entity @s[tag=CO.Aec.FieldModify.B] run data modify storage api: Argument.FieldOverride.Color set value 1
    execute if entity @s[tag=CO.Aec.FieldModify.C] run data modify storage api: Argument.FieldOverride.Model set value 20593
    execute if entity @s[tag=CO.Aec.FieldModify.C] run data modify storage api: Argument.FieldOverride.Color set value 2
    execute if entity @s[tag=CO.Aec.FieldModify.D] run data modify storage api: Argument.FieldOverride.Model set value 20594
    execute if entity @s[tag=CO.Aec.FieldModify.D] run data modify storage api: Argument.FieldOverride.Color set value 3
    execute positioned ~ ~ ~ run function api:object/summon

# 終了
    kill @s
