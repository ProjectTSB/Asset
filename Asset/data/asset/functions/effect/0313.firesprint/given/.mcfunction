#> asset:effect/0313.firesprint/given/
#
# Effectが付与された時の処理
#
# @within function asset:effect/0313.firesprint/_/given

# 着火
    execute if predicate api:area/is_breakable run setblock ~ ~ ~ fire keep

# 補正削除
    function asset:effect/0313.firesprint/modfier/add
