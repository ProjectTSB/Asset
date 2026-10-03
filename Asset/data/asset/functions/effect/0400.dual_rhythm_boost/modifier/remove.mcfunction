#> asset:effect/0400.dual_rhythm_boost/modifier/remove
#
# @within function
#   asset:effect/0400.dual_rhythm_boost/remove/
#   asset:effect/0400.dual_rhythm_boost/end/

# 自身の与ダメージ増加補正だけを削除する。
    data modify storage api: Argument.UUID set value [I;1,3,400,0]
    function api:modifier/attack/base/remove
