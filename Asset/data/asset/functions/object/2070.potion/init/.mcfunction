#> asset:object/2070.potion/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2070/init

# スピード設定
    data modify storage asset:context this.StepPerTick set value 2
    data modify storage asset:context this.Range set value 160
    data modify storage asset:context this.MovePerStep set value 0.4

# スーパーメソッド呼び出し
    function asset:object/super.init
