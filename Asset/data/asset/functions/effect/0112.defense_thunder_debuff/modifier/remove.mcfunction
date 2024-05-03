#> asset:effect/0112.defense_thunder_debuff/modifier/remove
# @within function asset:effect/0112.defense_thunder_debuff/*/*

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,3,112,0]
    function api:modifier/defense/thunder/remove
