execute unless score @s aj.louvert.rig_loaded = @s aj.louvert.rig_loaded run function animated_java:louvert/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:louvert/zzzzzzzz/animations/tick
function #animated_java:louvert/on_tick/as_root