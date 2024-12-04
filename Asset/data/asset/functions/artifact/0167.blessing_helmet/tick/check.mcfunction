#> asset:artifact/0167.blessing_helmet/tick/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/167/tick/check


# Y座標が0未満のみ処理
    execute unless predicate lib:is_void run tag @s remove CanUsed