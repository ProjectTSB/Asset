#> asset:effect/0653.absolute_drive/modifier/remove
#
#
#
# @within function
#   asset:effect/0653.absolute_drive/re-given/
#   asset:effect/0653.absolute_drive/remove/
#   asset:effect/0653.absolute_drive/end/

# 防御力上昇を削除
    data modify storage api: Argument.UUID set value [I;1,3,653,0]
    function api:modifier/defense/base/remove
