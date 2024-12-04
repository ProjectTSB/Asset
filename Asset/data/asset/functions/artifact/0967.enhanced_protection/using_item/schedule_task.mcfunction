#> asset:artifact/0967.enhanced_protection/using_item/schedule_task
#
#
#
# @within function
#   asset:artifact/0967.enhanced_protection/using_item/
#   asset:artifact/0967.enhanced_protection/using_item/schedule_task

scoreboard players remove @a[scores={QV.Protected=1..}] QV.Protected 1

execute at @a[scores={QV.Protected=0..}] run particle dust 0.5 0.5 0.5 0.6 ~ ~1 ~ 0.6 0.6 0.6 1 5
execute as @a[scores={QV.Protected=0}] run function asset:artifact/0967.enhanced_protection/using_item/protect_end

execute if entity @a[scores={QV.Protected=0..},limit=1] run schedule function asset:artifact/0967.enhanced_protection/using_item/schedule_task 1t
