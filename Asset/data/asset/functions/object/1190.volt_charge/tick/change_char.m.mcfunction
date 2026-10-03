#> asset:object/1190.volt_charge/tick/change_char.m
#
#
#
# @within function asset:object/1190.volt_charge/tick/

# 変更
    $data modify entity @s text set value '{"text":"$(Char)","font":"object/1190"}'
    $execute on passengers run data modify entity @s text set value '{"text":"$(Char)","font":"object/1190"}'
