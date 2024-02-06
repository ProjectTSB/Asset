#> asset:effect/0011.defense_water_buff/remove_modifier
# @within function asset:effect/0011.defense_water_buff/*/*

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,3,11,0]
    data modify storage api: Argument.UUID[-2] set from storage asset:context id
    function api:modifier/defense/water/remove
