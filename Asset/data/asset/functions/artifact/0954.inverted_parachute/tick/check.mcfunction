#> asset:artifact/0954.inverted_parachute/tick/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/954/tick/check

# tpbanエリアでは使用不可
    execute if predicate lib:is_ban_tp_area run function lib:message/artifact/can_not_use_here
    execute if predicate lib:is_ban_tp_area run tag @s remove CanUsed
