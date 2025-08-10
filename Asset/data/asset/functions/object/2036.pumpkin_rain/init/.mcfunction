#> asset:object/2036.pumpkin_rain/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2036/init

# 演出
    playsound minecraft:entity.item.pickup hostile @a ~ ~ ~ 0.8 0.8

# スピード関連の設定
    data modify storage asset:context this.StepPerTick set value 5
    data modify storage asset:context this.Range set value 160
    data modify storage asset:context this.MovePerStep set value 0.1

# 継承
    function asset:object/super.init
