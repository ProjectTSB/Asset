#> asset:effect/0252.key_of_another_world/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/0252.key_of_another_world/given/

# 火攻撃 +10%
    data modify storage api: Argument.UUID set value [I;1,3,252,0]
    data modify storage api: Argument.Amount set value 0.10d
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/fire/add
# 水攻撃 +10%
    data modify storage api: Argument.UUID set value [I;1,3,252,0]
    data modify storage api: Argument.Amount set value 0.10d
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/water/add
# 雷攻撃 +10%
    data modify storage api: Argument.UUID set value [I;1,3,252,0]
    data modify storage api: Argument.Amount set value 0.10d
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/thunder/add
