#> asset:artifact/1060.great_demon_boots/equip/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのfeetに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{feet:1060} run function asset:artifact/1060.great_demon_boots/equip/2.check_condition
