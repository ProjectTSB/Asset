#> asset:artifact/0278.reveille/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/278/click/check

# オーバーワールドでなければCanUsedを削除
    execute if entity @s[tag=CanUsed] unless predicate lib:dimension/is_overworld run function lib:message/artifact/can_not_use_here
    execute unless predicate lib:dimension/is_overworld run tag @s remove CanUsed

# 昼ならCanUsedを削除する
    execute if entity @s[tag=CanUsed] if predicate lib:is_day run tellraw @s {"text":"発動条件を満たしていません。","color":"red"}
    execute if predicate lib:is_day run tag @s remove CanUsed
