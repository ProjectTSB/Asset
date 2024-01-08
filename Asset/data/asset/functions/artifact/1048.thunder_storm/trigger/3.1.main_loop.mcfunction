#> asset:artifact/1048.thunder_storm/trigger/3.1.main_loop
#
# 
#
# @within function
#   asset:artifact/1048.thunder_storm/trigger/3.main
#   asset:artifact/1048.thunder_storm/trigger/3.1.main_loop

tp @s ~ ~ ~ ~ ~
scoreboard players remove $T4.Temp Temporary 1
execute at @s positioned ^ ^ ^0.25 if block ^ ^ ^ #lib:no_collision if score $T4.Temp Temporary matches 1.. run function asset:artifact/1048.thunder_storm/trigger/3.1.main_loop