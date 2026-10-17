#> asset:object/1189.volt_laser/tick/change_char.m
#
#
#
# @within function asset:object/1189.volt_laser/tick/

#
    $data modify entity @s text set value '{"text":"$(Char)","font":"object/1189"}'
    $execute on passengers run data modify entity @s text set value '{"text":"$(Char)","font":"object/1189"}'
