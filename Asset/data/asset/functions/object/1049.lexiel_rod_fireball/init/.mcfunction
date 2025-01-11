#> asset:object/1049.lexiel_rod_fireball/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1049/init

# フィールドのデータからスコアを設定
    data modify storage asset:context this.Speed set value 2
    data modify storage asset:context this.Range set value 32

# デフォルト値0.5
    data modify storage asset:context this.MovePerStep set value 0.5

    function asset:object/super.init
