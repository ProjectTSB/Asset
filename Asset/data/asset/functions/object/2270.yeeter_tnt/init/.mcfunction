#> asset:object/2270.yeeter_tnt/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2270/init

# 実行角度に合わせる
    tp @s ~ ~ ~ ~ 0

# 予兆無し
    execute if data storage asset:context this{IsNoPrediction:true} run tag @s add 2270.NoPrediction
