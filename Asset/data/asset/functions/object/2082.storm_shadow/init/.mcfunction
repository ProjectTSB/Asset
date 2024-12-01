#> asset:object/2082.storm_shadow/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2082/init

# スピード設定
    data modify storage asset:context this.Speed set value 4
    data modify storage asset:context this.Range set value 32
    data modify storage asset:context this.MovePerStep set value 0.5

# super.init呼び出し
    function asset:object/super.init
