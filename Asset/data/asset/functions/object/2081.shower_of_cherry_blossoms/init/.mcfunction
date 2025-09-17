#> asset:object/2081.shower_of_cherry_blossoms/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2081/init

# スピード関連の設定
    data modify storage asset:context this.StepPerTick set value 1
    data modify storage asset:context this.Range set value 100
    data modify storage asset:context this.MovePerStep set value 0.05

# スーパーメソッド呼び出し
    function asset:object/super.init
