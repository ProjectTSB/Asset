#> asset:object/2058.return_thunder/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2058/init

# スピード設定
    data modify storage asset:context this.StepPerTick set value 1
    data modify storage asset:context this.Range set value 255

# MovePerStepはFieldOverrideから取得する

# 継承
    function asset:object/super.init
