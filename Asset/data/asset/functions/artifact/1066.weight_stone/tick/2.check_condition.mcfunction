#> asset:artifact/1066.weight_stone/tick/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1066.weight_stone/tick/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1066
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1066.weight_stone/tick/3.main
# リセット
    tag @s remove CanUsed
