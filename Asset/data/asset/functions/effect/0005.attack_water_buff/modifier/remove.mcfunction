#> asset:effect/0005.attack_water_buff/modifier/remove
# @within function asset:effect/0005.attack_water_buff/*/*

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,3,5,0]
    function api:modifier/attack/water/remove
