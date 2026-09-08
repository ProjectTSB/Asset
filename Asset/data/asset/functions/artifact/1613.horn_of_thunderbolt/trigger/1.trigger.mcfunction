#> asset:artifact/1613.horn_of_thunderbolt/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのoffhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{offhand:1613} run function asset:artifact/1613.horn_of_thunderbolt/trigger/2.check_condition