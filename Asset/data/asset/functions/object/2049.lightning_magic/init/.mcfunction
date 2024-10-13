#> asset:object/2049.lightning_magic/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2049/init

# スピード関連を設定
    data modify storage asset:context this.Speed set value 1
    data modify storage asset:context this.Range set value 250
    data modify storage asset:context this.MovePerStep set value 0.3

# 継承
    function asset:object/super.init

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
