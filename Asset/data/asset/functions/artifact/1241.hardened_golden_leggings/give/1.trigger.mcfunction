#> asset:artifact/1241.hardened_golden_leggings/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:artifact/give

execute if data storage asset:context {id:1241} run function asset:artifact/1241.hardened_golden_leggings/give/2.give
