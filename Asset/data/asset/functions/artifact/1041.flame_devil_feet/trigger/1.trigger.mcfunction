#> asset:artifact/1041.flame_devil_feet/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのfeetに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{feet:1041} run function asset:artifact/1041.flame_devil_feet/trigger/2.check_condition