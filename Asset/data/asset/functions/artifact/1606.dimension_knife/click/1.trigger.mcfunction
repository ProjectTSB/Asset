#> asset:artifact/1606.dimension_knife/click/1.trigger
#
#
#
# @within tag/function asset:artifact/**

# storage asset:idのmainhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:1606} run function asset:artifact/1606.dimension_knife/click/2.check_condition
