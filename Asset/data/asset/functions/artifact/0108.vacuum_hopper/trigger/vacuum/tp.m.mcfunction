#> asset:artifact/0108.vacuum_hopper/trigger/vacuum/tp.m
#
#
#
# @within function asset:artifact/0108.vacuum_hopper/trigger/vacuum/

# 吸い込む
    $execute anchored eyes facing entity @p[gamemode=!spectator,distance=..64] eyes if block ^ ^ ^1 #lib:no_collision/ anchored feet positioned ^ ^ ^ if block ^ ^0.1 ^1 #lib:no_collision/ rotated ~ ~-3 run tp @s ^ ^0.03 ^$(Move) ~ ~
