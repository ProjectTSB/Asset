#> asset:object/1197.celestial_starfield/tick/stars/draw.m
#
# 実行位置から指定したずれの位置に、wax_off で星を描く
#
# @input args
#   X : double
#   Y : double
#   Z : double
# @within function asset:object/1197.celestial_starfield/tick/stars/loop

    $particle wax_off ~$(X) ~$(Y) ~$(Z) 0 0 0 0 1
