#> asset:artifact/0740.flower_of_hazy_moon/equip/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/740/equip/check

    function asset:artifact/common/check_condition/hotbar
    
# 他にアイテム等確認する場合はここに書く
    execute if entity @s[tag=KK.Modifier] run tag @s remove CanUsed