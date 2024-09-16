#> asset:effect/0250.oracle_magic_attack/modifier/remove
#
# バフを削除する
#
# @within function
#   asset:effect/0250.oracle_magic_attack/end/
#   asset:effect/0250.oracle_magic_attack/remove/

# 魔法攻撃+8%
    data modify storage api: Argument.UUID set value [I;1,3,250,0]
    function api:modifier/attack/magic/remove
