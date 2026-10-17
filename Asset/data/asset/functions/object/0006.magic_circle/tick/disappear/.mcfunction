#> asset:object/0006.magic_circle/tick/disappear/
#
# 本体とPassengerに消失時の変化を適用する
#
# @within function asset:object/0006.magic_circle/tick/

# 両面に消失時の補間を設定する
    function asset:object/0006.magic_circle/tick/disappear/apply
    execute on passengers run function asset:object/0006.magic_circle/tick/disappear/apply
