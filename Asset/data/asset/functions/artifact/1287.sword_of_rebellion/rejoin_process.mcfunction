#> asset:artifact/1287.sword_of_rebellion/rejoin_process
#
#
#
# @within tag/function asset:rejoin

execute if entity @a[scores={ZR.BelieveMsgCooldown=1..},limit=1] run schedule function asset:artifact/1287.sword_of_rebellion/schedule_loop 1t replace
