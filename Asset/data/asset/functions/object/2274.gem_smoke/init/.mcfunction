#> asset:object/2274.gem_smoke/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2274/init

# 角度調整
    tp @s ~ ~ ~ ~ -50
    execute store result entity @s Rotation[1] float 0.1 run random value -600..-350
