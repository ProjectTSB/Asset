#> asset:artifact/1215.sharpened_diamond_axe/attack_melee/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1215/attack_melee/check

    execute unless data storage asset:context Attack{Crit:true} run tag @s remove CanUsed