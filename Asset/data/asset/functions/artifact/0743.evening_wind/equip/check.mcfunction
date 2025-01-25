#> asset:artifact/0743.evening_wind/equip/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/743/equip/check

    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# 既に装備している場合はCanUsedを削除
    execute if entity @s[tag=KN.Modifier] run tag @s remove CanUsed