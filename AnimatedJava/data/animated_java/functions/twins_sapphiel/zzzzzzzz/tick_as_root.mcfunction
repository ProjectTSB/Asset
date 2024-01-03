execute unless score @s aj.twins_sapphiel.rig_loaded = @s aj.twins_sapphiel.rig_loaded run function animated_java:twins_sapphiel/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:twins_sapphiel/zzzzzzzz/animations/tick
function #animated_java:twins_sapphiel/on_tick/as_root