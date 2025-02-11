#> asset:artifact/0991.soul_mate/keep_sneak_3s/schedule
#
#
#
# @within function
#   asset:artifact/0991.soul_mate/keep_sneak_3s/
#   asset:artifact/0991.soul_mate/keep_sneak_3s/schedule
#   asset:artifact/0991.soul_mate/rejoin_process

execute as @a[scores={RJ.Cooldown=1..}] run scoreboard players remove @s RJ.Cooldown 1
execute as @a[scores={RJ.Cooldown=..0}] run scoreboard players reset @s RJ.Cooldown

execute if entity @a[scores={RJ.Cooldown=1..}] run schedule function asset:artifact/0991.soul_mate/keep_sneak_3s/schedule 1t replace
