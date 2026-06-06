#> asset:artifact/1480.abyssal_zone/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのchestに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{chest:1480} run function asset:artifact/1480.abyssal_zone/trigger/2.check_condition