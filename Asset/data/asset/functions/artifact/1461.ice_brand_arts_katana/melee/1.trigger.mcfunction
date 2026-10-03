#> asset:artifact/1461.ice_brand_arts_katana/melee/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのmainhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:1461} run function asset:artifact/1461.ice_brand_arts_katana/melee/2.check_condition
