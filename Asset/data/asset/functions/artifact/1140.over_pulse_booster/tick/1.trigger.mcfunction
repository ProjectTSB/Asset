#> asset:artifact/1140.over_pulse_booster/tick/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのfeetに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{feet:1140} run function asset:artifact/1140.over_pulse_booster/tick/2.check_condition
