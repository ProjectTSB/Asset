#> asset:artifact/1082.cursed_straw_doll/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idの%slot%に装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{hotbar:[1082]} run function asset:artifact/1082.cursed_straw_doll/trigger/2.check_condition