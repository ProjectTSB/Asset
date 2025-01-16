#> asset:object/1010.fire_magic/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1010/tick

# 演出
    particle lava ~ ~ ~ 0 0 0 0 1 force
    particle flame ~ ~ ~ 0.3 0.3 0.3 0 3 force
    particle flame ~ ~ ~ 0.1 0.1 0.1 0 10 force

# super.tick
    function asset:object/super.tick
