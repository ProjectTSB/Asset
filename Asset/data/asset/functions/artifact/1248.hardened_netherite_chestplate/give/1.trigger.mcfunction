#> asset:artifact/1248.hardened_netherite_chestplate/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:artifact/give

execute if data storage asset:context {id:1248} run function asset:artifact/1248.hardened_netherite_chestplate/give/2.give
