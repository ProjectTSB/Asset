#> asset:effect/0008.defense_physical_buff/modifier/remove
# @within function asset:effect/0008.defense_physical_buff/*/*

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,3,8,0]
    function api:modifier/defense/physical/remove
