#> asset:artifact/1256.deep_azure/dis_equip/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/dis_equip

# storage asset:contextのidに装備している神器のIDが入っているので比較し、~/2.main.mcfunctionを実行する
execute if data storage asset:context id{mainhand:1256} run function asset:artifact/1256.deep_azure/dis_equip/2.main
