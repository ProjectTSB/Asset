#> asset:object/2057.lexiel_rod_fireball/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2057/init

# フィールドのデータからスコアを設定
    data modify storage asset:context this.Speed set value 1
    data modify storage asset:context this.Range set value 32

# デフォルト値0.5
    data modify storage asset:context this.MovePerStep set value 0.5

    function asset:object/super.init
