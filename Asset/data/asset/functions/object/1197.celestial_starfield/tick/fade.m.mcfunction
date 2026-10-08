#> asset:object/1197.celestial_starfield/tick/fade.m
#
# 文字を指定した不透明度に、線の背景を指定した色にする
#
# @input args
#   Opacity : int
#   Background : int (線の背景のARGB)
# @within function asset:object/1197.celestial_starfield/tick/

    $execute if entity @s[tag=1197.Glyph] run data modify entity @s text_opacity set value $(Opacity)
    $execute if entity @s[tag=1197.Line] run data modify entity @s background set value $(Background)
