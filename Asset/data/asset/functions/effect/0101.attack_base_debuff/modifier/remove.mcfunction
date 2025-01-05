#> asset:effect/0101.attack_base_debuff/modifier/remove
# @within function asset:effect/0101.attack_base_debuff/*/*

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,3,101,0]
    function api:modifier/attack/base/remove
