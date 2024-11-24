#> asset:object/2034.pumpkin_missile/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2034/init

# スピード関連の設定
    data modify storage asset:context this.Speed set value 2
    data modify storage asset:context this.Range set value 160
    data modify storage asset:context this.MovePerStep set value 0.2

# 継承
    function asset:object/super.init

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
