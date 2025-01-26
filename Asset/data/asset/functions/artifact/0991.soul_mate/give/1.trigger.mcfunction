#> asset:artifact/0991.soul_mate/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:artifact/give

execute if data storage asset:context {id:991} run function asset:artifact/0991.soul_mate/give/2.give
