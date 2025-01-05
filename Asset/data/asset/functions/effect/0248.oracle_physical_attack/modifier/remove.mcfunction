#> asset:effect/0248.oracle_physical_attack/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0248.oracle_physical_attack/end/
#   asset:effect/0248.oracle_physical_attack/remove/

# 物理攻撃+8%
    data modify storage api: Argument.UUID set value [I;1,3,248,0]
    function api:modifier/attack/physical/remove
