#> asset:effect/0617.twins_sight/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0617.twins_sight/end/
#   asset:effect/0617.twins_sight/remove/

# MP回復量+12%
    data modify storage api: Argument.UUID set value [I;1,3,617,0]
    function api:modifier/mp_regen/remove
