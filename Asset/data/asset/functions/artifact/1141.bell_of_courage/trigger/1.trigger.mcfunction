#> asset:artifact/1141.bell_of_courage/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idの%slot%に装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{offhand:1141} run function asset:artifact/1141.bell_of_courage/trigger/2.check_condition
