#> asset:object/2211.eclael_circle_slash/tick/effect
#
# Objectのtick時の処理
#
# @within asset:object/2211.eclael_circle_slash/tick/effect_start

# 揺らぎ
    execute store result storage asset:temp 2207.X float 0.1 run random value -50..50
    execute store result storage asset:temp 2207.Y float 0.1 run random value 0..20
    execute store result storage asset:temp 2207.Z float 0.1 run random value -50..50
    function asset:object/2211.eclael_circle_slash/tick/effect.m with storage asset:temp 2207
    data remove storage asset:temp 2207
