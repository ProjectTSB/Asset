#> asset:effect/0422.fire_period/remove/
#
# Effectが削除された時の処理
#
# @within function asset:effect/0422.fire_period/_/remove

## modifier削除
# 火攻撃
    data modify storage api: Argument.UUID set value [I;1,3,422,0]
    function api:modifier/attack/fire/remove

# 水攻撃
    data modify storage api: Argument.UUID set value [I;1,3,422,0]
    function api:modifier/attack/water/remove

# 雷攻撃
    data modify storage api: Argument.UUID set value [I;1,3,422,0]
    function api:modifier/attack/thunder/remove
