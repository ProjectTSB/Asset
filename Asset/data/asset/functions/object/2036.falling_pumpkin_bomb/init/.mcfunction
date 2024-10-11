#> asset:object/2036.falling_pumpkin_bomb/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2036/init

# スピード関連の設定
    data modify storage asset:context this.Speed set value 1
    data modify storage asset:context this.Range set value 160
    data modify storage asset:context this.MovePerStep set value 0.25

# 継承
    function asset:object/super.init

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
