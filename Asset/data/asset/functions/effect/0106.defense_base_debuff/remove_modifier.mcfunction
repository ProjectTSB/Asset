#> asset:effect/0106.defense_base_debuff/remove_modifier
# @within function asset:effect/0106.defense_base_debuff/*/*

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,3,106,0]
    data modify storage api: Argument.UUID[-2] set from storage asset:context id
    function api:modifier/defense/base/remove
