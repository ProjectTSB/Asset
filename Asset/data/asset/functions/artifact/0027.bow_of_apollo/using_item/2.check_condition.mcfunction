#> asset:artifact/0027.bow_of_apollo/using_item/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0027.bow_of_apollo/using_item/1.trigger

# 神器の基本的な条件の確認を行う
    data modify storage asset:artifact DisabledCheckFlag set value {MPRequire:true}
    function asset:artifact/common/check_condition/mainhand

# 成功している場合、3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0027.bow_of_apollo/using_item/3.main
    tag @s remove CanUsed
