execute unless score @s aj.twins_rubiel.rig_loaded = @s aj.twins_rubiel.rig_loaded run function animated_java:twins_rubiel/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:twins_rubiel/zzzzzzzz/animations/tick
function #animated_java:twins_rubiel/on_tick/as_root