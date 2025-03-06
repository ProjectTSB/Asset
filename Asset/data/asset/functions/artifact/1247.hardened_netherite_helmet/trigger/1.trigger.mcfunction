#> asset:artifact/1247.hardened_netherite_helmet/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのheadに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{head:1247} run function asset:artifact/1247.hardened_netherite_helmet/trigger/2.check_condition
