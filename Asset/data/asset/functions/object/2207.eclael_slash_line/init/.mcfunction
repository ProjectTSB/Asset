#> asset:object/2207.eclael_slash_line/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2207/init

# 色
    execute if data storage asset:context this{IsGreen:true} run tag @s add 2207.IsGreen
    execute if entity @s[tag=2207.IsGreen] on passengers run data modify entity @s text set value '[{"text":"a","font":"object/2208/0","color":"#91FF91"}]'

# 予告
    data modify storage api: Argument.ID set value 2113
    execute unless entity @s[tag=2207.IsGreen] run data modify storage api: Argument.FieldOverride.Color set value 6083583
    execute if entity @s[tag=2207.IsGreen] run data modify storage api: Argument.FieldOverride.Color set value 5111736
    data modify storage api: Argument.FieldOverride.Scale set value [5.1f,60f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 11
    data modify storage api: Argument.FieldOverride.Tick set value 25
    execute at @s positioned ^ ^ ^-30 run function api:object/summon
