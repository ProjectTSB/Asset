#> asset:artifact/1682.pre_cise_empty/tick/1.trigger
#
# 毎tick実行されるfunction
#
# @within tag/function asset:artifact/**

# メインハンドが本神器でスニーク中なら、的と頭上のObjectを維持する
    execute if data storage asset:context id{mainhand:1682} if predicate lib:is_sneaking run function asset:artifact/1681.pre_cise/shared/keep_objects
