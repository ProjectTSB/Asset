#> asset:object/1064.fire_of_rebirth/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1064/init

# 移動設定
    data modify storage asset:context this.StepPerTick set value 8
    data modify storage asset:context this.Range set value 160

# 継承
    function asset:object/super.init
