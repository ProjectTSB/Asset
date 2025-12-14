#> asset:object/2076.aurora_bullet/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2076/init

# スピード設定
    data modify storage asset:context this.StepPerTick set value 2
    data modify storage asset:context this.Range set value 60
    data modify storage asset:context this.MovePerStep set value 0.4

# 継承
    function asset:object/super.init
