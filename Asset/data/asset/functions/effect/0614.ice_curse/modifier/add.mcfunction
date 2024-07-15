#> asset:effect/0614.ice_curse/modifier/add
#
# 補正を付与する
#
# @within function
#   asset:effect/0614.ice_curse/given/
#   asset:effect/0614.ice_curse/re-given/

# (-20*スタック)%移動速度が下がる
    execute store result storage asset:temp Effect.Value double -0.2 run data get storage asset:context Stack

# マクロでattributeを付与
    function asset:effect/0614.ice_curse/modifier/add.m with storage asset:temp Effect

# リセット
    data remove storage asset:temp Effect

say b
