#> asset:effect/0113.receive_heal_debuff/modifier/remove
# @within function asset:effect/0113.receive_heal_debuff/*/*

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,3,113,0]
    function api:modifier/receive_heal/remove
