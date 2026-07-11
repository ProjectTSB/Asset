#> asset:artifact/1574.sword_for_knight/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:artifact/give

execute if data storage asset:context {id:1574} run function asset:artifact/1574.sword_for_knight/give/2.give
