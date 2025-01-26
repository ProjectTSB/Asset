#> asset:artifact/1149.afterglow_of_thunder/attack/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1149/attack/check

# 攻撃属性をチェック
# 火または雷属性ならカウントを1増加
    execute if entity @s[tag=CanUsed] if data storage asset:context Attack{ElementType:Fire} run scoreboard players add @s UU.AttackCount 1
    execute if entity @s[tag=CanUsed] if data storage asset:context Attack{ElementType:Thunder} run scoreboard players add @s UU.AttackCount 1

# 回数が規定値未満ならCanUsedを削除
    execute unless entity @s[scores={UU.AttackCount=25..}] run tag @s remove CanUsed

# 規定値以上ならカウントをリセット
    execute if entity @s[scores={UU.AttackCount=25..}] run scoreboard players reset @s UU.AttackCount
