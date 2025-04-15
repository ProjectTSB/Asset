#> asset:effect/0218.heavy_weight/modifier/add
# @within function asset:effect/0218.heavy_weight/*/*

# 補正を追加
    execute store result storage asset:context this.KBVal double 0.6 run data get storage asset:context Stack 1
    execute store result storage asset:context this.MoveVal double -0.15 run data get storage asset:context Stack 1
    function asset:effect/0218.heavy_weight/modifier/add.m with storage asset:context this
