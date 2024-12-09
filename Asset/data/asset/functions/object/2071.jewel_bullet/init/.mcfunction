#> asset:object/2071.jewel_bullet/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2071/init

# スピード関連の設定
# Speedはフィールドで設定する
    # data modify storage asset:context this.Speed set value 0
    data modify storage asset:context this.Range set value 128
    data modify storage asset:context this.MovePerStep set value 0.4

# 継承
    function asset:object/super.init
