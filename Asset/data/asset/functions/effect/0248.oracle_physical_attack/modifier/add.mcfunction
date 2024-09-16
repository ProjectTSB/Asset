#> asset:effect/0248.oracle_physical_attack/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/0248.oracle_physical_attack/given/

# 物理攻撃+8%
    data modify storage api: Argument.UUID set value [I;1,3,248,0]
    data modify storage api: Argument.Amount set value 0.08
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/physical/add
