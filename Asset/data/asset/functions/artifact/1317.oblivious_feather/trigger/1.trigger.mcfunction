#> asset:artifact/1317.oblivious_feather/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのhotbarに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{hotbar:[1317]} run function asset:artifact/1317.oblivious_feather/trigger/2.check_condition
