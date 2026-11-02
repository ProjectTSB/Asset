#> asset:object/1199.ocean_heart_vfx/tick/change_char.m
#
#
#
# @within function asset:object/1199.ocean_heart_vfx/tick/

# 適用
    $data modify entity @s text set value '{"text":"$(Char)","font":"object/1199"}'
    $execute on passengers run data modify entity @s text set value '{"text":"$(Char)","font":"object/1199"}'
