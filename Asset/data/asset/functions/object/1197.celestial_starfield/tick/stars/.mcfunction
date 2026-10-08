#> asset:object/1197.celestial_starfield/tick/stars/
#
# Starsの各位置に、wax_off で星を描く
#
# @within function asset:object/1197.celestial_starfield/tick/

    data modify storage asset:temp 1197.Stars set from storage asset:context this.Stars
    function asset:object/1197.celestial_starfield/tick/stars/loop
    data remove storage asset:temp 1197
