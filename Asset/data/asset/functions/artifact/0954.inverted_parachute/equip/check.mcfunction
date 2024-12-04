#> asset:artifact/0954.inverted_parachute/equip/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/954/equip/check

    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く
    execute if entity @s[gamemode=!survival,tag=CanUsed] run function lib:message/artifact/can_not_use_here
    execute if entity @s[gamemode=!survival] run tag @s remove CanUsed