#> asset:effect/0296.soul_disconnection/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0296.soul_disconnection/end/
#   asset:effect/0296.soul_disconnection/remove/
#   asset:effect/0296.soul_disconnection/re-given/

# 攻撃
    data modify storage api: Argument.UUID set value [I;1,3,296,0]
    function api:modifier/attack/base/remove
