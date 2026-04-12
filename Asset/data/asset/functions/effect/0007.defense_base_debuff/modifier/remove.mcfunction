#> asset:effect/0007.defense_base_debuff/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0007.defense_base_debuff/end/
#   asset:effect/0007.defense_base_debuff/re-given/
#   asset:effect/0007.defense_base_debuff/remove/

# 補正を削除する
    data modify storage api: Argument.UUID set value [I;1,3,-1,0]
    data modify storage api: Argument.UUID[2] set from storage asset:context originID
    function api:modifier/defense/base/remove
