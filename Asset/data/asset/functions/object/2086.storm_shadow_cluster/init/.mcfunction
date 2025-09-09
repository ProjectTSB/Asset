#> asset:object/2086.storm_shadow_cluster/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2086/init

# スピード設定
    data modify storage asset:context this.StepPerTick set value 7
    data modify storage asset:context this.Range set value 1024
    data modify storage asset:context this.MovePerStep set value 0.5

# super.init呼び出し
    function asset:object/super.init
