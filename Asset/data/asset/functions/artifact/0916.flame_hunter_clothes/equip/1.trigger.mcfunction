#> asset:artifact/0916.flame_hunter_clothes/equip/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within function asset_manager:artifact/triggers/dispatch/call.m

# storage asset:idのchestに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{chest:916} run function asset:artifact/0916.flame_hunter_clothes/equip/2.check_condition
