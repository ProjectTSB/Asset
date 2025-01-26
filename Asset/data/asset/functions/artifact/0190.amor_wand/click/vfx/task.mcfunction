#> asset:artifact/0190.amor_wand/click/vfx/task
#
#
#
# @within function asset:artifact/0190.amor_wand/click/vfx/*

execute as @e[type=marker,tag=5A.VFX] at @s run function asset:artifact/0190.amor_wand/click/vfx/main

execute if entity @e[type=marker,tag=5A.VFX,limit=1] run schedule function asset:artifact/0190.amor_wand/click/vfx/task 1t