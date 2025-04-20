#> asset:artifact/0790.aurora_boots/equip/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/equip

# storage asset:idのfeetに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{feet:790} run function asset:artifact/0790.aurora_boots/equip/2.check_condition
