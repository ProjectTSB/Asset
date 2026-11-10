#> asset:artifact/1657.phoenix_shield/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1657.phoenix_shield/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    data modify storage asset:artifact DisabledCheckFlag set value {CDMessage:true,MPMessage:true}
    function asset:artifact/common/check_condition/offhand
# 他にアイテム等確認する場合はここに書く
    execute if entity @s[tag=CanUsed] run function asset:artifact/1657.phoenix_shield/trigger/2.check_condition/damage_sum

# 火種が最大まで溜まっているならCanUsedを削除(記録は上限で止める)
    execute if entity @s[tag=CanUsed] run function asset:artifact/1657.phoenix_shield/trigger/2.check_condition/is_max_stack

# 累計スコアが50000未満ならCanUsedを削除(スコアは必要ダメージ量の10倍)(調整などで変えるときはここと2.check_condition/is_max_stackも変える)
    execute if entity @s[tag=CanUsed] unless entity @s[scores={1A1.DamageSum=50000..}] run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1657.phoenix_shield/trigger/3.main
