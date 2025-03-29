#> asset:artifact/0643.raimei_chestplate/equip/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0643.raimei_chestplate/equip/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    data modify storage asset:artifact DisabledCheckFlag set value {LocalCooldown:true}
    function asset:artifact/common/check_condition/chest
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0643.raimei_chestplate/equip/3.main
# リセット
    tag @s remove CanUsed
