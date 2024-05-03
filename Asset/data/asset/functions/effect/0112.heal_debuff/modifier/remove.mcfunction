#> asset:effect/0112.heal_debuff/modifier/remove
# @within function asset:effect/0112.heal_debuff/*/*

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,3,112,0]
    function api:modifier/heal/remove
