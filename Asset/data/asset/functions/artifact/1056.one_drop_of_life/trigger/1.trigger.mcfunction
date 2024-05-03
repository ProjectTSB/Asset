#> asset:artifact/1056.one_drop_of_life/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idの%slot%に装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{hotbar:[1056]} run function asset:artifact/1056.one_drop_of_life/trigger/2.check_condition