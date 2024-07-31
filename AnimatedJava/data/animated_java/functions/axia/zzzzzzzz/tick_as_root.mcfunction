execute unless score @s aj.axia.rig_loaded = @s aj.axia.rig_loaded run function animated_java:axia/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:axia/zzzzzzzz/animations/tick
function #animated_java:axia/on_tick/as_root