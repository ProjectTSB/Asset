#> asset:artifact/1308.magnifier_of_detective_girl/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1308.magnifier_of_detective_girl/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/offhand
# 他にアイテム等確認する場合はここに書く

# 物理攻撃以外弾く
    execute if entity @s[tag=CanUsed] unless data storage asset:context Attack{AttackType:Physical} run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1308.magnifier_of_detective_girl/trigger/3.main
