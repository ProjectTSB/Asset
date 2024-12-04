#> asset:artifact/0963.hunters_amulet/tick/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/963/tick/check

    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く
    execute unless predicate lib:is_sprinting run tag @s remove QR.Run
    execute unless predicate lib:is_sprinting run tag @s remove CanUsed
