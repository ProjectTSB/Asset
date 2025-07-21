#> asset:artifact/1220.sacred_hardener/trigger/schedule_loop
#
#
#
# @within function
#   asset:artifact/1220.sacred_hardener/trigger/2.check_condition
#   asset:artifact/1220.sacred_hardener/trigger/rejoin_process
#   asset:artifact/1220.sacred_hardener/trigger/schedule_loop

execute as @a[scores={XW.ErrorCooldown=1..}] run scoreboard players remove @s XW.ErrorCooldown 1
execute as @a[scores={XW.ErrorCooldown=..0}] run scoreboard players reset @s XW.ErrorCooldown

execute if entity @a[scores={XW.ErrorCooldown=1..},limit=1] run schedule function asset:artifact/1220.sacred_hardener/trigger/schedule_loop 1t replace
