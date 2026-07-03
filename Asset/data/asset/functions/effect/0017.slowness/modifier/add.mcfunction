#> asset:effect/0017.slowness/modifier/add
#
# 補正を付与する
#
# @within function
#   asset:effect/0017.slowness/given/
#   asset:effect/0017.slowness/re-given/

# (Stack * 5)%移動速度を下げる
    data modify storage asset:temp Args.ID set from storage asset:context originID
    data modify storage asset:temp Args.UUID set from storage asset:context this.UUID
    execute store result storage asset:temp Args.Val float -0.05 run data get storage asset:context Stack
    function asset:effect/0017.slowness/modifier/add.m with storage asset:temp Args
    data remove storage asset:temp Args
