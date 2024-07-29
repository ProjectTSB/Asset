#> asset:effect/0261.gale_blessing/modfier/add
#
# 補正を付与する
#
# @within function
#   asset:effect/0261.gale_blessing/given/
#   asset:effect/0261.gale_blessing/re-given/
#   asset:effect/0261.gale_blessing/tick/

# 移動速度を(40*Stack)%付与
    execute store result storage asset:temp Effect.Value double 0.4 run data get storage asset:context Stack 1
    function asset:effect/0261.gale_blessing/modfier/add.m with storage asset:temp Effect

# リセット
    data remove storage asset:temp Effect
