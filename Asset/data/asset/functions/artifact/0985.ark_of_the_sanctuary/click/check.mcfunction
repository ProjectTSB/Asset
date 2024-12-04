#> asset:artifact/0985.ark_of_the_sanctuary/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/985/click/check

# コマンド実行中（Timeをもっている）なら実行できない
    execute if score @s RD.Time matches 1.. run tag @s remove CanUsed
