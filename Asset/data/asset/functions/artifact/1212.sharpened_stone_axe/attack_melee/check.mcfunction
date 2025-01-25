#> asset:artifact/1212.sharpened_stone_axe/attack_melee/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1212/attack_melee/check

    execute unless data storage asset:context Attack{Crit:true} run tag @s remove CanUsed