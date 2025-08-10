#> asset:object/2078.dark_bullet/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2078/init

# スピード関連の設定
# StepPerTickはフィールドで設定する
    # data modify storage asset:context this.StepPerTick set value 0
    data modify storage asset:context this.Range set value 128
    data modify storage asset:context this.MovePerStep set value 0.4

# 継承
    function asset:object/super.init
