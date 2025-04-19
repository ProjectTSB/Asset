#> asset:artifact/1061.hekireki/using_item/1.trigger
#
#
#
# @within tag/function asset:artifact/using_item

# storage asset:idのmainhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:1061} run function asset:artifact/1061.hekireki/using_item/2.check_condition
