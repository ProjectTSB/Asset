#> asset:object/2048.wave_magic/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2048/init

# スピード関連を設定
    data modify storage asset:context this.Speed set value 1
    data modify storage asset:context this.Range set value 250
    data modify storage asset:context this.MovePerStep set value 0.5

# 継承
    function asset:object/super.init

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
