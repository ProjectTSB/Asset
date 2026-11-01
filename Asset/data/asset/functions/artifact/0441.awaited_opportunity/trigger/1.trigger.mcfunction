#> asset:artifact/0441.awaited_opportunity/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within function asset_manager:artifact/triggers/dispatch/call.m

# storage asset:idのauto/feet/legs/chest/head/mainhand/offhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:441} run function asset:artifact/0441.awaited_opportunity/trigger/2.check_condition