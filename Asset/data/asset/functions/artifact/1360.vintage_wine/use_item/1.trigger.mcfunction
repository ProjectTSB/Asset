#> asset:artifact/1360.vintage_wine/use_item/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのoffhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{offhand:1360} run function asset:artifact/1360.vintage_wine/use_item/2.check_condition
