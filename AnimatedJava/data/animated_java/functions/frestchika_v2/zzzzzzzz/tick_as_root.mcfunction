execute unless score @s aj.frestchika_v2.rig_loaded = @s aj.frestchika_v2.rig_loaded run function animated_java:frestchika_v2/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:frestchika_v2/zzzzzzzz/animations/tick
function #animated_java:frestchika_v2/on_tick/as_root