#> asset:artifact/0724.oblivious_snow/equip/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのheadに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{head:724} run function asset:artifact/0724.oblivious_snow/equip/2.check_condition
