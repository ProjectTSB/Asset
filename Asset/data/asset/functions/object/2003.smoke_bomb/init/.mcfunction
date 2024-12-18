#> asset:object/2003.smoke_bomb/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2003/init

# どこに吹っ飛ぶかを計算する
    # まずマーカーを基点に用意
        tp 0-0-0-0-0 0.0 0.0 0.0
    # ランダムな方向を向かせる
        execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run random value 0..36000
        execute store result entity 0-0-0-0-0 Rotation[1] float 0.01 run random value -7500..-2000
    # マーカーを前進させる
        execute at 0-0-0-0-0 run tp 0-0-0-0-0 ^ ^ ^0.5
    # マーカーPosをFieldに保存する
        data modify storage asset:context this.Pos set from entity 0-0-0-0-0 Pos
    # マーカーを戻してあげる
        execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0
