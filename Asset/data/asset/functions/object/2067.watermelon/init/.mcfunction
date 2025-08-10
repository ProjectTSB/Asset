#> asset:object/2067.watermelon/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2067/init

# スピード設定
    data modify storage asset:context this.StepPerTick set value 2
    data modify storage asset:context this.Range set value 40
    data modify storage asset:context this.MovePerStep set value 0.5

# スーパーメソッド呼び出し
    function asset:object/super.init
