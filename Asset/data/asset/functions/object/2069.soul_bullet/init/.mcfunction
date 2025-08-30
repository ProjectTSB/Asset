#> asset:object/2069.soul_bullet/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2069/init

# スピード設定
    data modify storage asset:context this.StepPerTick set value 2
    data modify storage asset:context this.Range set value 80
    data modify storage asset:context this.MovePerStep set value 0.4

# スーパーメソッド呼び出し
    function asset:object/super.init
