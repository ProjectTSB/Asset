#> asset:artifact/1273.maidchan_plush/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのoffhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{offhand:1273} run function asset:artifact/1273.maidchan_plush/trigger/2.check_condition