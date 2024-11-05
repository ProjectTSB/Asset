#> asset:object/2069.soul_bullet/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2069/init

# フィールドのデータからスコアを設定
    data modify storage asset:context this.Speed set value 1
    data modify storage asset:context this.Range set value 40
    data modify storage asset:context this.MovePerStep set value 0.8

# スーパーメソッド呼び出し
    function asset:object/super.init
