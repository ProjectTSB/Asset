#> asset:effect/0104.attack_water_debuff/modifier/remove
# @within function asset:effect/0104.attack_water_debuff/*/*

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,3,104,0]
    function api:modifier/attack/water/remove
