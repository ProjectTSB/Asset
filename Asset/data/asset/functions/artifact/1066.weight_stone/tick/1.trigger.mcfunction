#> asset:artifact/1066.weight_stone/tick/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/tick

# storage asset:idのhotbarに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{hotbar:[1066]} run function asset:artifact/1066.weight_stone/tick/2.check_condition
