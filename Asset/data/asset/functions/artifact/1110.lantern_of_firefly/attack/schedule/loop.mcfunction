#> asset:artifact/1110.lantern_of_firefly/attack/schedule/loop
#
# ループする
#
# @within function
#   asset:artifact/1110.lantern_of_firefly/attack/
#   asset:artifact/1110.lantern_of_firefly/attack/schedule/
#   asset:artifact/1110.lantern_of_firefly/rejoin_process

execute as @a[scores={UU.Tick=0..}] at @s run function asset:artifact/1110.lantern_of_firefly/attack/schedule/
