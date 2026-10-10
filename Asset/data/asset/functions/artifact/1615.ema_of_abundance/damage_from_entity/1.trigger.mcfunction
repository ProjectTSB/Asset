#> asset:artifact/1615.ema_of_abundance/damage_from_entity/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within function asset:artifact/1615.ema_of_abundance/give/2.give

# storage asset:idのhotbarに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{hotbar:[1615]} run function asset:artifact/1615.ema_of_abundance/damage_from_entity/2.main
