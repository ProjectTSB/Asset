#> asset:effect/0218.heavy_weight/add_modifier
# @within function asset:effect/0218.heavy_weight/*/*

# 補正を追加
    execute store result storage asset:context this.KBVal double 0.1 run data get storage asset:context Stack 1
    execute store result storage asset:context this.MoveVal double -0.3 run data get storage asset:context Stack 1
    function asset:effect/0218.heavy_weight/add_modifier.m with storage asset:context this
