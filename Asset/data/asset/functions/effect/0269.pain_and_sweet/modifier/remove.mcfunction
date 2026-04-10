#> asset:effect/0269.pain_and_sweet/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0269.pain_and_sweet/end/
#   asset:effect/0269.pain_and_sweet/remove/

# MP回復
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    function api:modifier/mp_regen/remove
