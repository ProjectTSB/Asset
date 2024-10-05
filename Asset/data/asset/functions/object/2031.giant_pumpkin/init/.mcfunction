#> asset:object/2031.giant_pumpkin/init/
#
# Objectのinit時の処理
#
# @within function asset:object/alias/2031/init

# フィールドからRotationを取得
# 地面に水平にしか転がらないようにする
    data modify storage asset:context this.Rotation[1] set value 0.0f
    data modify entity @s Rotation set from storage asset:context this.Rotation

# スピード関連の設定
    data modify storage asset:context this set value {Speed:0,Range:128,MovePerStep:1}

# 継承
    function asset:object/super.init

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
