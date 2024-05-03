#> asset:effect/0108.defense_magic_debuff/modifier/remove
# @within function asset:effect/0108.defense_magic_debuff/*/*

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,3,108,0]
    function api:modifier/defense/magic/remove
