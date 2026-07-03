#> asset:artifact/1311.yearning_rose/damage_from_entity/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idの%slot%に装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{offhand:1311} run function asset:artifact/1311.yearning_rose/damage_from_entity/2.check_condition
