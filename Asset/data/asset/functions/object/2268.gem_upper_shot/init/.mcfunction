#> asset:object/2268.gem_upper_shot/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2268/init

# 角度をランダムに設定
    execute store result entity @s Rotation[0] float 0.1 run random value 0..3600
    execute store result entity @s Rotation[1] float 0.1 run random value -900..-700
