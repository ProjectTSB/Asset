#> asset:effect/0001.attack_base_debuff/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0001.attack_base_debuff/end/
#   asset:effect/0001.attack_base_debuff/re-given/
#   asset:effect/0001.attack_base_debuff/remove/

# 補正を付与する
    data modify storage api: Argument.UUID set value [I;1,3,1,0]
    function api:modifier/attack/base/remove
