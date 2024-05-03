#> asset:effect/0106.defense_base_debuff/modifier/remove
# @within function asset:effect/0106.defense_base_debuff/*/*

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,3,106,0]
    function api:modifier/defense/base/remove
