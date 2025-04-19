#> asset:artifact/1138.over_pulse_bodyarmor/damage/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/damage

# storage asset:idのchestに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{chest:1138} run function asset:artifact/1138.over_pulse_bodyarmor/damage/2.check_condition
