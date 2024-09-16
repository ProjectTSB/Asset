#> asset:effect/0260.life_steal/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0260.life_steal/end/
#   asset:effect/0260.life_steal/re-given/
#   asset:effect/0260.life_steal/remove/

# 物理攻撃
    data modify storage api: Argument.UUID set value [I;1,1,1047,7]
    function api:modifier/attack/physical/remove
