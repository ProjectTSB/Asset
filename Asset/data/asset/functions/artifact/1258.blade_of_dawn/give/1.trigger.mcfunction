#> asset:artifact/1258.blade_of_dawn/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:artifact/give

execute if data storage asset:context {id:1255} run function asset:artifact/1258.blade_of_dawn/give/2.give
