#> asset:artifact/0870.samurai_blade/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/870/click/check

# コマンド実行中（Timeをもっている）なら実行できない
    execute if score @s O6.Time matches 1.. run tag @s remove CanUsed
