#> asset:object/2107.heiloang_fireball/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2107/init

# スピード関連の設定
    data modify storage asset:context this.Speed set value 1
    data modify storage asset:context this.Range set value 128
    data modify storage asset:context this.MovePerStep set value 0.4

# 継承
    function asset:object/super.init
