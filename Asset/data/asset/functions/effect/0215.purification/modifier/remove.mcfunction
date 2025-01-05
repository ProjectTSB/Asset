#> asset:effect/0215.purification/modifier/remove
#
# バフを削除する
#
# @within function
#   asset:effect/0215.purification/end/
#   asset:effect/0215.purification/remove/

# 物理攻撃
    data modify storage api: Argument.UUID set value [I;1,3,215,0]
    function api:modifier/attack/physical/remove

# 魔法攻撃
    data modify storage api: Argument.UUID set value [I;1,3,215,0]
    function api:modifier/attack/magic/remove

# 攻撃速度
    attribute @s generic.attack_speed modifier remove 00000001-0000-0003-0000-00d700000000
