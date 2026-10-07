#> asset:artifact/1634.call_glove_creepers/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:artifact/give

execute if data storage asset:context {id:1634} run function asset:artifact/1634.call_glove_creepers/give/2.give
