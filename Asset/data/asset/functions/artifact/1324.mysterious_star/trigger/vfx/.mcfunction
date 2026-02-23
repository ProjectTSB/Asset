#> asset:artifact/1324.mysterious_star/trigger/vfx/
#
#
#
# @within function asset:artifact/1324.mysterious_star/trigger/3.main

# MPが最も多いプレイヤーから低いプレイヤーへ線を伸ばす
    execute as @p[tag=10S.HighestMPTarget] at @s facing entity @p[tag=10S.LowestMPTarget] feet positioned ~ ~0.2 ~ run function asset:artifact/1324.mysterious_star/trigger/vfx/recursive
