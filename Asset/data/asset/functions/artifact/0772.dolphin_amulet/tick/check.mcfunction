#> asset:artifact/0772.dolphin_amulet/tick/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/772/tick/check

    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# 水中にいない場合CanUsedを削除
    execute unless predicate lib:is_in_water/include_flowing run tag @s remove CanUsed
