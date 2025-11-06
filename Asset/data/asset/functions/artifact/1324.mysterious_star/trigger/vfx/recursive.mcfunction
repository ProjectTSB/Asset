#> asset:artifact/1324.mysterious_star/trigger/vfx/recursive
#
#
#
# @within function
#   asset:artifact/1324.mysterious_star/trigger/vfx/
#   asset:artifact/1324.mysterious_star/trigger/vfx/recursive

# 演出
    particle dust 0.384 0.373 0.953 0.75 ~ ~ ~ 0.25 0.25 0.25 1 0 normal
    particle dust 0.384 0.373 0.953 0.75 ^ ^ ^0.5 0.25 0.25 0.25 1 0 normal

# LowestMPTargetが近くにいたら終了
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=10S.LowestMPTarget,dx=0] run return fail

# 再帰
    execute if entity @s[distance=..40] positioned ^ ^ ^1 run function asset:artifact/1324.mysterious_star/trigger/vfx/recursive
