#> asset:artifact/0991.soul_mate/trigger/equip/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのautoに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{hotbar:[991]} run function asset:artifact/0991.soul_mate/trigger/equip/2.check_condition