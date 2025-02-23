#> asset:object/2207.eclael_slash_line/tick/effect
#
# Objectのtick時の処理
#
# @within asset:object/2207.eclael_slash_line/tick/effect_check

# 揺らぎ
    execute store result storage asset:temp 2207.X float 0.1 run random value -15..15
    execute store result storage asset:temp 2207.Y float 0.1 run random value -10..20
    execute store result storage asset:temp 2207.Z float 0.1 run random value -20..20
    function asset:object/2207.eclael_slash_line/tick/effect.m with storage asset:temp 2207
    data remove storage asset:temp 2207
