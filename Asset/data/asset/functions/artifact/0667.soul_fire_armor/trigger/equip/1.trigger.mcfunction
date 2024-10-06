#> asset:artifact/0667.soul_fire_armor/trigger/equip/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのfeetに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{feet:667} run function asset:artifact/0667.soul_fire_armor/trigger/equip/2.check_condition
