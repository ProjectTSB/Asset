#> asset:object/1197.celestial_starfield/tick/stars/loop
#
# 先頭の位置に星を描いて一覧から外し、残りがあれば繰り返す
#
# @within function
#   asset:object/1197.celestial_starfield/tick/stars/
#   asset:object/1197.celestial_starfield/tick/stars/loop

    function asset:object/1197.celestial_starfield/tick/stars/draw.m with storage asset:temp 1197.Stars[0]
    data remove storage asset:temp 1197.Stars[0]
    execute if data storage asset:temp 1197.Stars[0] run function asset:object/1197.celestial_starfield/tick/stars/loop
