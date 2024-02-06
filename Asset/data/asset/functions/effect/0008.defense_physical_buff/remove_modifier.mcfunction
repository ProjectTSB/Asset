#> asset:effect/0008.defense_physical_buff/remove_modifier
# @within function asset:effect/0008.defense_physical_buff/*/*

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,3,8,0]
    data modify storage api: Argument.UUID[-2] set from storage asset:context id
    function api:modifier/defense/physical/remove
