#> asset:artifact/1080.allochromatic_empty/sneak/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのmainhand/offhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:1080} run function asset:artifact/1080.allochromatic_empty/sneak/2.check_condition
