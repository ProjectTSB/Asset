#> asset:artifact/1311.yearning_rose/damage_from_entity/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1311.yearning_rose/damage_from_entity/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1311
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# バニラ攻撃の場合はCanUsedを削除
    execute if data storage asset:context Damage{IsVanilla:1b} run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1311.yearning_rose/damage_from_entity/3.main
