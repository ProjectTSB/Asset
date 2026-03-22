#> asset:artifact/1149.afterglow_of_thunder/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1149.afterglow_of_thunder/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1149
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# 雷属性攻撃ならダメージを加算
    execute if entity @s[tag=CanUsed] if data storage asset:context Attack{ElementType:Thunder} run function asset:artifact/1149.afterglow_of_thunder/trigger/2.check_condition/damage_sum

# 累計スコアが80000未満ならCanUsedを削除
    execute if entity @s[tag=CanUsed] unless entity @s[scores={VX.DamageSum=80000..}] run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1149.afterglow_of_thunder/trigger/3.main
