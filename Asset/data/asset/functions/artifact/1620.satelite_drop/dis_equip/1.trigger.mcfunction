#> asset:artifact/1620.satelite_drop/dis_equip/1.trigger
#
#
#
# @within tag/function asset:artifact/dis_equip

# storage asset:idのmainhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:1620} run function asset:artifact/1620.satelite_drop/dis_equip/2.main
