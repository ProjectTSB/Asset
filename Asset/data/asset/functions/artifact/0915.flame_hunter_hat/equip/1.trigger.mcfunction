#> asset:artifact/0915.flame_hunter_hat/equip/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/equip

# storage asset:idのheadに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{head:915} run function asset:artifact/0915.flame_hunter_hat/equip/2.check_condition
