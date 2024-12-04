#> asset:artifact/0954.inverted_parachute/tick/check
#
# 神器の条件確認処理
#
# @within function asset:artifact/alias/954/tick/check

# サバイバルで無ければ使えない
    execute if entity @s[tag=CanUsed] unless predicate world_manager:area/01.islands run function lib:message/artifact/can_not_use_here
    execute unless predicate world_manager:area/01.islands run tag @s remove CanUsed
