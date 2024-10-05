#> asset:object/2031.giant_pumpkin/init/
#
# Objectのinit時の処理
#
# @within function asset:object/alias/2031/init

# スピード関連の設定
    data modify storage asset:context this set value {Speed:0,Range:128,MovePerStep:1}

# 継承
    function asset:object/super.init

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
