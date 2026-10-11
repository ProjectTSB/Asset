#> asset:object/1200.starlight_circle/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1200/init

# 回転方向を50%の確率で反転する
    execute store result storage asset:context this.LeftRotate byte 1 run random value 0..1
