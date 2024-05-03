#> asset:effect/0106.attack_thunder_debuff/modifier/remove
# @within function asset:effect/0106.attack_thunder_debuff/*/*

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,3,106,0]
    function api:modifier/attack/thunder/remove
