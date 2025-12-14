#> asset:object/2047.prominence_magic/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2047/init

# スピード関連を設定
    data modify storage asset:context this.StepPerTick set value 1
    data modify storage asset:context this.Range set value 50
    data modify storage asset:context this.MovePerStep set value 0.5

# 継承
    function asset:object/super.init
