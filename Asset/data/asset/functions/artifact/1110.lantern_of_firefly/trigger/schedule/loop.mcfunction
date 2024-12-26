#> asset:artifact/1110.lantern_of_firefly/trigger/schedule/loop
#
# ループする
#
# @within function
#   asset:artifact/1110.lantern_of_firefly/trigger/3.main
#   asset:artifact/1110.lantern_of_firefly/trigger/schedule/
#   asset:artifact/1110.lantern_of_firefly/trigger/rejoin_process

execute as @a[scores={UU.Tick=0..}] at @s run function asset:artifact/1110.lantern_of_firefly/trigger/schedule/
