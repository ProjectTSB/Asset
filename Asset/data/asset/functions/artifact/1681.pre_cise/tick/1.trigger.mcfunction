#> asset:artifact/1681.pre_cise/tick/1.trigger
#
# 毎tick実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:contextのidに装備している神器のIDが入っているので比較し、2.check_conditionを実行する
    execute if data storage asset:context id{mainhand:1681} run function asset:artifact/1681.pre_cise/tick/2.check_condition
