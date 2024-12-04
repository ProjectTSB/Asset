#> asset:effect/0051.attack_base_debuff/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0051.attack_base_debuff/end/
#   asset:effect/0051.attack_base_debuff/re-given/
#   asset:effect/0051.attack_base_debuff/remove/

# 補正を削除する
    data modify storage api: Argument.UUID set value [I;1,3,51,0]
    function api:modifier/attack/base/remove
