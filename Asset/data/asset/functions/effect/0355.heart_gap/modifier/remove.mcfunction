#> asset:effect/0355.heart_gap/modifier/remove
#
# 補正の削除
#
# @within function
#   asset:effect/0355.heart_gap/remove/
#   asset:effect/0355.heart_gap/end/

# 補正を削除する
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    function api:modifier/defense/base/remove
