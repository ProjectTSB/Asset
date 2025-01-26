#> asset:artifact/1211.sharpened_wooden_axe/attack_melee/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1211/attack_melee/check

    execute unless data storage asset:context Attack{Crit:true} run tag @s remove CanUsed