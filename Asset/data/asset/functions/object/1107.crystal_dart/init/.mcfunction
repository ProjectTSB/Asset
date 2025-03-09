#> asset:object/1107.crystal_dart/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1107/init

# フィールドのデータからスコアを設定
    data modify storage asset:context this.Speed set value 2
    data modify storage asset:context this.Range set value 600

# デフォルト値0.5
    data modify storage asset:context this.MovePerStep set value 0.5

# 継承
    function asset:object/super.init
