#> asset:effect/0372.gasoline/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0372.gasoline/end/
#   asset:effect/0372.gasoline/remove/

# 解除
    data modify storage api: Argument.UUID set value [I;1,3,372,0]
    function api:modifier/defense/fire/remove
