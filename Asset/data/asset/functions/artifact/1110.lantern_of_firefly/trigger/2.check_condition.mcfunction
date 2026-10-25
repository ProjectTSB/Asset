#> asset:artifact/1110.lantern_of_firefly/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1110.lantern_of_firefly/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1110
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# 攻撃属性をチェック
# 火または雷属性ならカウントを1増加
    execute if entity @s[tag=CanUsed] if data storage asset:context Attack{ElementType:Fire} run function asset:artifact/1110.lantern_of_firefly/trigger/2.check_condition/calc_count
    execute if entity @s[tag=CanUsed] if data storage asset:context Attack{ElementType:Thunder} run function asset:artifact/1110.lantern_of_firefly/trigger/2.check_condition/calc_count

# 回数が50未満ならCanUsedを削除
    execute unless entity @s[scores={UU.AttackCount=25..}] run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1110.lantern_of_firefly/trigger/3.main

# 20以上ならカウントをリセット
    execute if entity @s[scores={UU.AttackCount=25..}] run scoreboard players reset @s UU.AttackCount
