#> asset:effect/0427.power_of_curse/remove/
#
# Effectが削除された時の処理
#
# @within function asset:effect/0427.power_of_curse/_/remove

## modifier削除
# 攻撃
    data modify storage api: Argument.UUID set value [I;1,3,427,0]
    function api:modifier/attack/base/remove

# MP回復量
    data modify storage api: Argument.UUID set value [I;1,3,427,0]
    function api:modifier/mp_heal/remove
