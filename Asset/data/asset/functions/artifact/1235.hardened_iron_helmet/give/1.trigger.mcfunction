#> asset:artifact/1235.hardened_iron_helmet/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:artifact/give

execute if data storage asset:context {id:1235} run function asset:artifact/1235.hardened_iron_helmet/give/2.give
