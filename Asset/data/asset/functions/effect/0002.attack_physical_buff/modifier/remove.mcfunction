#> asset:effect/0002.attack_physical_buff/modifier/remove
# @within function asset:effect/0002.attack_physical_buff/*/*

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,3,2,0]
    function api:modifier/attack/physical/remove
