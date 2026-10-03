#> asset:effect/0399.dual_rhythm_guard/modifier/remove
#
# @within function
#   asset:effect/0399.dual_rhythm_guard/remove/
#   asset:effect/0399.dual_rhythm_guard/end/

# 自身の軽減補正だけを削除する。
    data modify storage api: Argument.UUID set value [I;1,3,399,0]
    function api:modifier/defense/base/remove
