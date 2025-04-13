#> asset:artifact/1230.thunder_stiletto/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:artifact/give

execute if data storage asset:context {id:1230} run function asset:artifact/1230.thunder_stiletto/give/2.give
