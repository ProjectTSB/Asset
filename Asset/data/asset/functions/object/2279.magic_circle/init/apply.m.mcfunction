#> asset:object/2279.magic_circle/init/apply.m
#
# 本体とPassengerに表示する文字とフォントを設定する
#
# @input storage asset:context this
#   Char : string
#   BackChar : string
#   Font : string
# @within function asset:object/2279.magic_circle/init/

$data modify entity @s text set value '[{"text":"$(Char)","font":"$(Font)"},{"text":"\\u0001","font":"space"}]'
$execute on passengers run data modify entity @s text set value '[{"text":"$(BackChar)","font":"$(Font)"},{"text":"\\u0001","font":"space"}]'
