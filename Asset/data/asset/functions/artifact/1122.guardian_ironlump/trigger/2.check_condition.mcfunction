#> asset:artifact/1122.guardian_ironlump/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1122.guardian_ironlump/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1122
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# すでに持ってるか確認する
    execute if data storage asset:context Old.Items.hotbar[{tag:{TSB:{ID:1122}}}] run tag @s remove CanUsed
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1122.guardian_ironlump/trigger/3.main
