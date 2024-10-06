#> asset:effect/0252.key_of_another_world/modifier/remove
#
# 補正を付与する
#
# @within function
#   asset:effect/0252.key_of_another_world/end/
#   asset:effect/0252.key_of_another_world/remove/

# 火攻撃 +10%
    data modify storage api: Argument.UUID set value [I;1,3,252,0]
    function api:modifier/attack/fire/remove
# 水攻撃 +10%
    data modify storage api: Argument.UUID set value [I;1,3,252,0]
    function api:modifier/attack/water/remove
# 雷攻撃 +10%
    data modify storage api: Argument.UUID set value [I;1,3,252,0]
    function api:modifier/attack/thunder/remove
