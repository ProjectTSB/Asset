#> asset:artifact/1682.pre_cise_empty/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:artifact/give

execute if data storage asset:context {id:1682} run function asset:artifact/1682.pre_cise_empty/give/2.give
