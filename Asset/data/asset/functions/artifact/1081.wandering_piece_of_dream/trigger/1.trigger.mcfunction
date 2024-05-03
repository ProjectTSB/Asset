#> asset:artifact/1081.wandering_piece_of_dream/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idの%slot%に装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{hotbar:[1081]} run function asset:artifact/1081.wandering_piece_of_dream/trigger/2.check_condition