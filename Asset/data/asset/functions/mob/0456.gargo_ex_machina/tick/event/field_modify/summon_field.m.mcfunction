#> asset:mob/0456.gargo_ex_machina/tick/event/field_modify/summon_field.m
#
# フィールド・モディファイ
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/field_modify/summon_field_start

# マネージャー召喚
    data modify storage api: Argument.ID set value 2266
    $data modify storage api: Argument.FieldOverride.Model set value "$(Model)"
    $data modify storage api: Argument.FieldOverride.Color set value $(Color)
    function api:object/summon

# 終了
    kill @s
