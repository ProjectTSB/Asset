#> asset:object/2279.magic_circle/tick/disappear/
#
# 本体とPassengerに消失時の変化を適用する
#
# @within function asset:object/2279.magic_circle/tick/

# 消失の段階を設定する
    data modify storage asset:context this.Phase set value "Disappearing"

# 消失時間に合わせて次の90度へ回転する
    data modify storage asset:context this.SpinInterval set from storage asset:context this.DisappearDuration
    function asset:object/2279.magic_circle/tick/spin/rotate

# 両面に消失時のScaleを設定する
    function asset:object/2279.magic_circle/tick/disappear/apply
    execute on passengers run function asset:object/2279.magic_circle/tick/disappear/apply
