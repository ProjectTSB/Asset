#> asset:effect/0272.inspiration/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0272.inspiration/end/
#   asset:effect/0272.inspiration/remove/

# 物理攻撃+20%
    data modify storage api: Argument.UUID set value [I;1,3,272,0]
    function api:modifier/attack/physical/remove
