#> asset:artifact/1242.hardened_golden_boots/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:artifact/give

execute if data storage asset:context {id:1242} run function asset:artifact/1242.hardened_golden_boots/give/2.give
