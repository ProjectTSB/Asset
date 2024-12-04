#> asset:artifact/0741.abyss_insurance_card/tick/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/741/tick/check

    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# Y座標が0未満のみ処理
    execute unless predicate lib:is_void run tag @s remove CanUsed