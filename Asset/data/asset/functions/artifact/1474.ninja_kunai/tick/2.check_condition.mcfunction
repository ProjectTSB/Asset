#> asset:artifact/1474.ninja_kunai/tick/2.check_condition
#
#
#
# @within function asset:artifact/1474.ninja_kunai/tick/1.trigger

# IDを指定
    data modify storage asset:artifact TargetID set value 1474
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く
    execute if predicate lib:in_battle run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1474.ninja_kunai/tick/3.main
