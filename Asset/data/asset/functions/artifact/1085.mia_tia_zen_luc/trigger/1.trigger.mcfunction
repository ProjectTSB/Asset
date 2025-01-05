#> asset:artifact/1085.mia_tia_zen_luc/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのoffhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{offhand:1085} run function asset:artifact/1085.mia_tia_zen_luc/trigger/2.check_condition