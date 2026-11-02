#> asset:artifact/1657.phoenix_shield/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1657.phoenix_shield/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/offhand
# 他にアイテム等確認する場合はここに書く

    execute if entity @s[tag=CanUsed] run function asset:artifact/1657.phoenix_shield/trigger/2.check_condition/damage_sum

# 累計スコアが50000未満ならCanUsedを削除
    execute if entity @s[tag=CanUsed] unless entity @s[scores={1A1.DamageSum=50000..}] run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1657.phoenix_shield/trigger/3.main
