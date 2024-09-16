#> asset:effect/0217.the_answer/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0217.the_answer/end/
#   asset:effect/0217.the_answer/remove/

# MP回復量-100%
    data modify storage api: Argument.UUID set value [I;1,3,217,0]
    function api:modifier/mp_regen/remove
