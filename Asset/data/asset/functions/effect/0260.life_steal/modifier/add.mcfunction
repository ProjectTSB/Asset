#> asset:effect/0260.life_steal/modifier/add
#
# 補正を付与する
#
# @within function
#   asset:effect/0260.life_steal/given/
#   asset:effect/0260.life_steal/re-given/

# 物理攻撃 + (最大HP * 0.00125) %
# 最大HPが100の時に+12.5%
    data modify storage api: Argument.UUID set value [I;1,3,260,0]
    function api:modifier/max_health/get
    execute store result storage api: Argument.Amount double 0.00125 run data get storage api: Return.MaxHealth
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/physical/add
