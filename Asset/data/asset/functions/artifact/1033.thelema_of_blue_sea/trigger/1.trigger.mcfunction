#> asset:artifact/1033.thelema_of_blue_sea/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのmainhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:1033} run function asset:artifact/1033.thelema_of_blue_sea/trigger/2.check_condition