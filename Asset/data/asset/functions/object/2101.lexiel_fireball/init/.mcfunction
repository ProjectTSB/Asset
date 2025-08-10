#> asset:object/2101.lexiel_fireball/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2101/init

# フィールドのデータからスコアを設定
    data modify storage asset:context this.StepPerTick set value 2
    data modify storage asset:context this.Range set value 32

# デフォルト値0.5
    data modify storage asset:context this.MovePerStep set value 0.5

# Super
    function asset:object/super.init
