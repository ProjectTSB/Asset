#> asset:artifact/1059.great_demon_leg/equip/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのlegsに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{legs:1059} run function asset:artifact/1059.great_demon_leg/equip/2.check_condition
