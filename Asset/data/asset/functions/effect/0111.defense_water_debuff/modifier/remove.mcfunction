#> asset:effect/0111.defense_water_debuff/modifier/remove
# @within function asset:effect/0111.defense_water_debuff/*/*

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,3,111,0]
    function api:modifier/defense/water/remove
