#> asset:artifact/1088.purifying_hydrangea/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1088.purifying_hydrangea/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1088
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# 天候が(雨or雷雨でなければ) = 晴れならCanUsedを削除
    execute if predicate lib:weather/is_sunny run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1088.purifying_hydrangea/trigger/3.main
