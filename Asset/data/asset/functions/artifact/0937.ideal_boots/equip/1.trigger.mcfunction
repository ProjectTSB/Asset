#> asset:artifact/0937.ideal_boots/equip/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのfeetに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{feet:937} run function asset:artifact/0937.ideal_boots/equip/2.check_condition
