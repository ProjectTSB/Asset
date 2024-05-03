#> asset:effect/0110.defense_fire_debuff/modifier/remove
# @within function asset:effect/0110.defense_fire_debuff/*/*

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,3,110,0]
    function api:modifier/defense/fire/remove
