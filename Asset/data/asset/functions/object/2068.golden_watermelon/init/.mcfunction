#> asset:object/2068.golden_watermelon/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2068/init

# スピード設定
    data modify storage asset:context this.Speed set value 3
    data modify storage asset:context this.Range set value 120
    data modify storage asset:context this.MovePerStep set value 0.5

# スーパーメソッド呼び出し
    function asset:object/super.init
