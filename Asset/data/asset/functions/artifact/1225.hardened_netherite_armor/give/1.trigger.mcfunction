#> asset:artifact/1225.hardened_netherite_armor/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:artifact/give

execute if data storage asset:context {id:1225} run function asset:artifact/1225.hardened_netherite_armor/give/2.give
