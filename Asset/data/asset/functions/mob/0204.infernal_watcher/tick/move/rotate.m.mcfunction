#> asset:mob/0204.infernal_watcher/tick/move/rotate.m
# @input args
#   Yaw : float
#   Pitch : float
# @within function asset:mob/0204.infernal_watcher/tick/move/do.m

$execute at @s run tp @s ~ ~ ~ $(Yaw) $(Pitch)
