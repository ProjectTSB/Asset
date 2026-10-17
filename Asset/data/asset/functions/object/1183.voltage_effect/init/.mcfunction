#> asset:object/1183.voltage_effect/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1183/init

# ランダムにIndex設定
    execute store result storage asset:context this.Index int 1 run random value 0..2

# 4回append
    function asset:object/1183.voltage_effect/init/append/
    function asset:object/1183.voltage_effect/init/append/
    function asset:object/1183.voltage_effect/init/append/
    function asset:object/1183.voltage_effect/init/append/
