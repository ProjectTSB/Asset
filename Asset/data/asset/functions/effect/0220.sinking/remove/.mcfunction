#> asset:effect/0220.sinking/remove/
#
#
#
# @within function asset:effect/0220.sinking/_/remove

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,3,220,0]
    function api:modifier/attack/base/remove