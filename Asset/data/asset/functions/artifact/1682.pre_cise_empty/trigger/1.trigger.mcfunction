#> asset:artifact/1682.pre_cise_empty/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:contextのidに装備している神器のIDが入っているので比較し、2.check_conditionを実行する
    execute if data storage asset:context id{mainhand:1682} run function asset:artifact/1682.pre_cise_empty/trigger/2.check_condition
