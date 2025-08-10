#> asset:object/2059.thunder_curtain/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2059/init

# スピード設定
    data modify storage asset:context this.StepPerTick set value 1
    data modify storage asset:context this.Range set value 255
    data modify storage asset:context this.MovePerStep set value 0.225

# 継承
    function asset:object/super.init
