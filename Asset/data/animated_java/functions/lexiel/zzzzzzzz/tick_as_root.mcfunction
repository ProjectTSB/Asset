execute unless score @s aj.lexiel.rig_loaded = @s aj.lexiel.rig_loaded run function animated_java:lexiel/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:lexiel/zzzzzzzz/animations/tick
function #animated_java:lexiel/on_tick/as_root