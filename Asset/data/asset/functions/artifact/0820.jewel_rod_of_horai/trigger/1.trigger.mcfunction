#> asset:artifact/0820.jewel_rod_of_horai/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのmainhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:820} run function asset:artifact/0820.jewel_rod_of_horai/trigger/2.check_condition
