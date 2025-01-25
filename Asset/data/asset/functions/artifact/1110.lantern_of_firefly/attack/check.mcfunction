#> asset:artifact/1110.lantern_of_firefly/attack/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1110/attack/check

    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# 攻撃属性をチェック
# 火または雷属性ならカウントを1増加
    execute if entity @s[tag=CanUsed] if data storage asset:context Attack{ElementType:Fire} run scoreboard players add @s UU.AttackCount 1
    execute if entity @s[tag=CanUsed] if data storage asset:context Attack{ElementType:Thunder} run scoreboard players add @s UU.AttackCount 1

# 回数が50未満ならCanUsedを削除
    execute unless entity @s[scores={UU.AttackCount=25..}] run tag @s remove CanUsed

# CanUsedタグをチェックして.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1110.lantern_of_firefly/attack/
