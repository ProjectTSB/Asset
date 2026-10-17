#> asset:object/0006.magic_circle/tick/disappear/
#
# 本体とPassengerに消失時の変化を適用する
#
# @within function asset:object/0006.magic_circle/tick/

# 消失時間に合わせて次の90度へ回転する
    data modify storage asset:context this.SpinInterval set from storage asset:context this.DisappearDuration
    function asset:object/0006.magic_circle/tick/spin/rotate

# 両面に消失時のScaleを設定する
    function asset:object/0006.magic_circle/tick/disappear/apply
    execute on passengers run function asset:object/0006.magic_circle/tick/disappear/apply
