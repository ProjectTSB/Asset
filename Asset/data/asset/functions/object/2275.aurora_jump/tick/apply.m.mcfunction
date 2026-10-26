#> asset:object/2275.aurora_jump/tick/apply.m
#
#
#
# @within function asset:object/2275.aurora_jump/tick/

# 文字送りの余白を補って表裏の画像を中央に揃える
    $data modify entity @s text set value '[{"text":"$(Char)","font":"object/2275"},{"text":"\\u0001","font":"space"}]'
    $execute on passengers run data modify entity @s text set value '[{"text":"$(Char)","font":"object/2275"},{"text":"\\u0001","font":"space"}]'
