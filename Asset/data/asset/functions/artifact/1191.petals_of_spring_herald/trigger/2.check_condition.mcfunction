#> asset:artifact/1191.petals_of_spring_herald/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1191.petals_of_spring_herald/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1191
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# IsHoT:trueならCanUsedを削除
    execute if entity @s[tag=CanUsed] if data storage asset:context ReceiveHeal{IsHoT:true} run tag @s remove CanUsed

# 超過回復量が0ならCanUsedを削除
    execute if entity @s[tag=CanUsed] if data storage asset:context ReceiveHeal.Amount{Over:0} run tag @s remove CanUsed

# 超過回復量を与えたかチェックする
    execute if entity @s[tag=CanUsed] run data modify storage asset:temp Heal.To set from storage asset:context Heal.To
    execute if entity @s[tag=CanUsed] run data modify storage asset:temp Heal.Over set from storage asset:context Heal.Amounts.Over
    execute if entity @s[tag=CanUsed] run function asset:artifact/1191.petals_of_spring_herald/trigger/2.check_condition/check_over_heal

# Target.ToがないならCanUsed
    execute if entity @s[tag=CanUsed] unless data storage asset:temp Target.To[0] run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1191.petals_of_spring_herald/trigger/3.main

# リセット
    data remove storage asset:temp Heal
    data remove storage asset:temp Target
