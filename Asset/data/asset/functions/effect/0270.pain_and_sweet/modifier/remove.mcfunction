#> asset:effect/0270.pain_and_sweet/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0270.pain_and_sweet/end/
#   asset:effect/0270.pain_and_sweet/remove/

# MP回復+5%
    data modify storage api: Argument.UUID set value [I;1,3,269,0]
    function api:modifier/mp_regen/remove
