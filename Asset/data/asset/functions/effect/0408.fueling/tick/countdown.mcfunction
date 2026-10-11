#> asset:effect/0408.fueling/tick/countdown
#
#
#
# @within function asset:effect/0408.fueling/tick/

# Intervalを20にリセット
    data modify storage asset:context this.Interval set value 20

# 演出
    playsound block.note_block.bit player @s ~ ~ ~ 1.0 1.0
