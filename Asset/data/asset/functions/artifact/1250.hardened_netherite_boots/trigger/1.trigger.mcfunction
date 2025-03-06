#> asset:artifact/1250.hardened_netherite_boots/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのfeetに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{feet:1250} run function asset:artifact/1250.hardened_netherite_boots/trigger/2.check_condition
