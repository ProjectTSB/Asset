#> asset:artifact/1240.hardened_golden_chestplate/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:artifact/give

execute if data storage asset:context {id:1240} run function asset:artifact/1240.hardened_golden_chestplate/give/2.give
