#> asset:effect/0101.attack_physical_debuff/modifier/remove
# @within function asset:effect/0101.attack_physical_debuff/*/*

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,3,101,0]
    function api:modifier/attack/physical/remove
