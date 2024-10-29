#> asset:object/2005.thunder_bomb/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2005/init
    
# ランダムな方向を向かせる（Y軸は固定）
    execute store result entity @s Rotation[0] float 0.01 run random value 0..36000
