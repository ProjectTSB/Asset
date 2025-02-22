#> asset:artifact/1080.allochromatic_empty/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのmainhand/offhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:1080} run tag @s add U0.Main
    execute if data storage asset:context id{ offhand:1080} run tag @s add U0.Off
    execute unless entity @s[tag=!U0.Main,tag=!U0.Off] run function asset:artifact/1080.allochromatic_empty/trigger/2.check_condition
