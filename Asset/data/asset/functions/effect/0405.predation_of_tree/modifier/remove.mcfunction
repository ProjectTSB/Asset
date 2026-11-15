#> asset:effect/0405.predation_of_tree/modifier/remove
#
# 補正削除
#
# @within function
#   asset:effect/0405.predation_of_tree/end/
#   asset:effect/0405.predation_of_tree/remove/

# MP回復
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    function api:modifier/mp_heal/remove
