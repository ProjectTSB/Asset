#> asset:artifact/0563.heartland/tick/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/563/tick/check

    # 頭(562),脚(564),足(565)がハートランドか確認
    execute unless data storage asset:context id{head:562,legs:564,feet:565} run tag @s remove CanUsed