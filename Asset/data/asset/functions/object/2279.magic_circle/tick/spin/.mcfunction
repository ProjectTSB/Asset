#> asset:object/2279.magic_circle/tick/spin/
#
# 本体とPassengerを90度回転させ、最初に出現時の変化を適用する
#
# @within function asset:object/2279.magic_circle/tick/

# 回転段階に応じた補間時間を設定する
    data modify storage asset:context this.SpinInterval set from storage asset:context this.SpinDuration
    execute if data storage asset:context this{Phase:"Waiting"} run data modify storage asset:context this.SpinInterval set from storage asset:context this.AppearDuration

# 本体とPassengerを次の回転段階へ進める
    function asset:object/2279.magic_circle/tick/spin/rotate

# 最初の回転後に出現の段階へ進める
    execute if data storage asset:context this{Phase:"Waiting"} run data modify storage asset:context this.Phase set value "Appearing"
