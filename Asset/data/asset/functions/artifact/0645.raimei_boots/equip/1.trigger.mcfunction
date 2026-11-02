#> asset:artifact/0645.raimei_boots/equip/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within function asset_manager:artifact/triggers/dispatch/call.m

# storage asset:idのfeetに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{feet:645} run function asset:artifact/0645.raimei_boots/equip/2.check_condition
