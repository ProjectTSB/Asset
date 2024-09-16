#> asset:effect/0251.oracle_magic_defense/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0251.oracle_magic_defense/end/
#   asset:effect/0251.oracle_magic_defense/remove/

# 魔法耐性+8%
    data modify storage api: Argument.UUID set value [I;1,3,251,0]
    function api:modifier/defense/magic/remove
