#> asset:object/2275.aurora_jump/tick/apply.m
#
#
#
# @within function asset:object/2275.aurora_jump/tick/

#
    $data modify entity @s text set value '{"text":"$(Char)","font":"object/2275"}'
    $execute on passengers run data modify entity @s text set value '{"text":"$(Char)","font":"object/2275"}'
