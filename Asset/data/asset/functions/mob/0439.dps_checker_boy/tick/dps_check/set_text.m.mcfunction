#> asset:mob/0439.dps_checker_boy/tick/dps_check/set_text.m
#
#
#
# @within function asset:mob/0439.dps_checker_boy/tick/dps_check/*

#$data modify entity @s text set value '[{"text":"DPS: $(DPS)","color": "$(Color)","underlined":true}]'
$data modify entity @s text set value '[{"text":"DPS: "},{"text":"$(DPS)","color": "$(Color)","underlined":true}]'
