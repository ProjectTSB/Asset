#> asset:artifact/1430.shield_of_fate/trigger/2.check_condition
#
# 装備を付けた時のメイン処理
#
# @within function asset:artifact/1430.shield_of_fate/trigger/1.trigger
# ID指定する
    data modify storage asset:artifact TargetID set value 1430
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く
    execute if entity @s[tag=13Q.Equipped] run tag @s remove CanUsed
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1430.shield_of_fate/trigger/3.main
