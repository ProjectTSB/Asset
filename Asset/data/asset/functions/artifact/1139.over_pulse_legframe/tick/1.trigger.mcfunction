#> asset:artifact/1139.over_pulse_legframe/tick/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのlegsに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{legs:1139} run function asset:artifact/1139.over_pulse_legframe/tick/2.check_condition
