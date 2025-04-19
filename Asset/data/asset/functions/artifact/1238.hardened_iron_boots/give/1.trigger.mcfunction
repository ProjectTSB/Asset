#> asset:artifact/1238.hardened_iron_boots/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:artifact/give

execute if data storage asset:context {id:1238} run function asset:artifact/1238.hardened_iron_boots/give/2.give
