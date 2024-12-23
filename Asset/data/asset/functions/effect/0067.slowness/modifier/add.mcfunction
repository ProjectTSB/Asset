#> asset:effect/0067.slowness/modifier/add
#
# 補正を付与する
#
# @within function
#   asset:effect/0067.slowness/given/
#   asset:effect/0067.slowness/re-given/

# (Stack * 5)%移動速度を下げる
    execute store result storage asset:temp 67.Val float -0.05 run data get storage asset:context Stack
    function asset:effect/0067.slowness/modifier/add.m with storage asset:temp 67
    data remove storage asset:temp 67
