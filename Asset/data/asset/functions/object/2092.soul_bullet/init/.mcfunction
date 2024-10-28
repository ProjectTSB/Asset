#> asset:object/2092.soul_bullet/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2092/init

# スピード設定
    data modify storage asset:context this.Speed set value 1
    data modify storage asset:context this.Range set value 300
    data modify storage asset:context this.MovePerStep set value 0.1

# 継承
    function asset:object/super.init
