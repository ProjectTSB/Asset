#> asset:artifact/1228.fatalerror/release_using_item/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/using_item/release/

# storage asset:contextのidに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
execute if data storage asset:context id{mainhand:1228} run function asset:artifact/1228.fatalerror/release_using_item/2.check_condition
