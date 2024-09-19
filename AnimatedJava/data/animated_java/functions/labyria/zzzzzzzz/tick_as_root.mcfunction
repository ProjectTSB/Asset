execute unless score @s aj.labyria.rig_loaded = @s aj.labyria.rig_loaded run function animated_java:labyria/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:labyria/zzzzzzzz/animations/tick
function #animated_java:labyria/on_tick/as_root