#> asset:effect/0340.endless_thirst/modifier/remove
#
#
#
# @within function
#   asset:effect/0340.endless_thirst/end/
#   asset:effect/0340.endless_thirst/remove/

# 補正を削除
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    function api:modifier/attack/base/remove

# 補正を削除
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    function api:modifier/heal/remove
