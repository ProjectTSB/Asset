#> asset:artifact/1079.allochromatic/click/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/click.carrot_on_a_stick

# storage asset:idのmainhand/offhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:1079} run function asset:artifact/1079.allochromatic/click/2.check_condition
