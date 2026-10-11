#> asset:artifact/1623.palermo/using_item/1.trigger
#
#
#
# @within function asset:artifact/1623.palermo/register

# storage asset:idのmainhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:1623} run function asset:artifact/1623.palermo/using_item/2.check_condition
