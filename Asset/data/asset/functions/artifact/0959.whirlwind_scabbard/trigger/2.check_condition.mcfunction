#> asset:artifact/0959.whirlwind_scabbard/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0959.whirlwind_scabbard/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 959
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/offhand
# 他にアイテム等確認する場合はここに書く

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0959.whirlwind_scabbard/trigger/3.main