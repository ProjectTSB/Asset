#> asset:effect/0104.attack_fire_debuff/modifier/remove
# @within function asset:effect/0104.attack_fire_debuff/*/*

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,3,104,0]
    function api:modifier/attack/fire/remove
