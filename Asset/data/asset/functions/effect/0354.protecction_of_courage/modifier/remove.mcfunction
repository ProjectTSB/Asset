#> asset:effect/0354.protecction_of_courage/modifier/remove
#
# 補正の削除
#
# @within function
#   asset:effect/0354.protecction_of_courage/remove/
#   asset:effect/0354.protecction_of_courage/end/

# 補正を削除する
    data modify storage api: Argument.UUID set value [I;1,3,354,0]
    function api:modifier/defense/base/remove
