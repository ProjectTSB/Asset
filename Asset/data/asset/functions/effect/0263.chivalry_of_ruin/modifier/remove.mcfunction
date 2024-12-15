#> asset:effect/0263.chivalry_of_ruin/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0263.chivalry_of_ruin/end/
#   asset:effect/0263.chivalry_of_ruin/re-given/
#   asset:effect/0263.chivalry_of_ruin/remove/

# 属性攻撃
    data modify storage api: Argument.UUID set value [1,3,263,0]
    function api:modifier/attack/base/remove

# 属性耐性
    data modify storage api: Argument.UUID set value [1,3,263,0]
    function api:modifier/defense/base/remove
