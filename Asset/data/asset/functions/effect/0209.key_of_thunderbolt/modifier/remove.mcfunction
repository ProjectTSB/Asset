#> asset:effect/0209.key_of_thunderbolt/modifier/remove
#
# 補正を付与する
#
# @within function
#   asset:effect/0209.key_of_thunderbolt/end/
#   asset:effect/0209.key_of_thunderbolt/remove/

# 雷攻撃 +40%
    data modify storage api: Argument.UUID set value [I;1,3,209,0]
    function api:modifier/attack/thunder/remove
