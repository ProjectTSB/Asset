#> asset:artifact/1287.sword_of_rebellion/schedule_loop
#
#
#
# @within function
#   asset:artifact/1287.sword_of_rebellion/attack_melee/2.check_condition
#   asset:artifact/1287.sword_of_rebellion/schedule_loop
#   asset:artifact/1287.sword_of_rebellion/rejoin_process

execute as @e[scores={ZR.BelieveMsgCooldown=1..}] run scoreboard players remove @s ZR.BelieveMsgCooldown 1
execute as @e[scores={ZR.BelieveMsgCooldown=..0}] run scoreboard players reset @s ZR.BelieveMsgCooldown

execute if entity @a[scores={ZR.BelieveMsgCooldown=1..},limit=1] run schedule function asset:artifact/1287.sword_of_rebellion/schedule_loop 1t replace
