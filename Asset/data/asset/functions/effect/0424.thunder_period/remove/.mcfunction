#> asset:effect/0424.thunder_period/remove/
#
# Effectが削除された時の処理
#
# @within function asset:effect/0424.thunder_period/_/remove

## modifier削除
# 火攻撃
    data modify storage api: Argument.UUID set value [I;1,3,424,0]
    function api:modifier/attack/fire/remove

# 水攻撃
    data modify storage api: Argument.UUID set value [I;1,3,424,0]
    function api:modifier/attack/water/remove

# 雷攻撃
    data modify storage api: Argument.UUID set value [I;1,3,424,0]
    function api:modifier/attack/thunder/remove
