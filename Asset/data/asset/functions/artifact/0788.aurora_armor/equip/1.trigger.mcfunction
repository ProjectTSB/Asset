#> asset:artifact/0788.aurora_armor/equip/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/equip

# storage asset:idのchestに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{chest:788} run function asset:artifact/0788.aurora_armor/equip/2.check_condition
