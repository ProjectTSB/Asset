#> asset:object/0006.magic_circle/tick/spin/
#
# 本体とPassengerを90度回転させ、最初に出現時の変化を適用する
#
# @within function asset:object/0006.magic_circle/tick/

# 回転段階に応じた補間時間を設定する
    data modify storage asset:context this.SpinInterval set from storage asset:context this.SpinDuration
    execute if data storage asset:context this{FirstSpin:true} run data modify storage asset:context this.SpinInterval set from storage asset:context this.AppearDuration

# 本体とPassengerを次の回転段階へ進める
    function asset:object/0006.magic_circle/tick/spin/rotate

# 最初の回転に合わせて出現時のScaleへ変化する
    execute if data storage asset:context this{FirstSpin:true} run function asset:object/0006.magic_circle/tick/spin/appear
    execute if data storage asset:context this{FirstSpin:true} on passengers run function asset:object/0006.magic_circle/tick/spin/appear
    data modify storage asset:context this.FirstSpin set value false
