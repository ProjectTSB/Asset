#> asset:artifact/1128.aigis_vitae/click/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのmainhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:1128} run function asset:artifact/1128.aigis_vitae/click/2.check_condition
