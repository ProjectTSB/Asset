#> asset:artifact/0027.bow_of_apollo/using_item/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのmainhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:27} run function asset:artifact/0027.bow_of_apollo/using_item/2.check_condition
