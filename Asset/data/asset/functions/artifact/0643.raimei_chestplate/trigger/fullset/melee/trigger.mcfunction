#> asset:artifact/0643.raimei_chestplate/trigger/fullset/melee/trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのchestに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if entity @s[tag=HV.Full] run function asset:artifact/0643.raimei_chestplate/trigger/fullset/melee/
