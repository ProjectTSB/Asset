#> asset:object/1030.barrage_spirit_bullet/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1030/init

# フィールドのデータからスコアを設定
    data modify storage asset:context this.Speed set value 2
    data modify storage asset:context this.Range set value 60

# デフォルト値0.5
    data modify storage asset:context this.MovePerStep set value 0.5

# リセット

    function asset:object/super.init
