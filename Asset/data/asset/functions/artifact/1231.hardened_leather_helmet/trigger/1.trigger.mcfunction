#> asset:artifact/1231.hardened_leather_helmet/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのheadに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{head:1231} run function asset:artifact/1231.hardened_leather_helmet/trigger/2.check_condition