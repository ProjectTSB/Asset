#> asset:artifact/0027.bow_of_apollo/shot/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0027.bow_of_apollo/shot/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    data modify storage asset:artifact DisabledCheckFlag set value {MPRequire:true}
    function asset:artifact/common/check_condition/mainhand
# CanUsedタグを持っていないなら終了
    execute if entity @s[tag=!CanUsed] run return fail
# 1段階チャージしているか確認する
    function asset:artifact/0027.bow_of_apollo/define_const
    function asset:artifact/0027.bow_of_apollo/get_charge/
    execute if data storage asset:temp R{ChargeState:0} run return fail
# 3.main.mcfunctionを実行する
    function asset:artifact/0027.bow_of_apollo/shot/3.main
