#> asset:artifact/1172.cyfosio_v2/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのautoに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{auto:1172} run function asset:artifact/1172.cyfosio_v2/trigger/2.check_condition