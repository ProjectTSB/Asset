execute unless score @s aj.haruclaire_v3.rig_loaded = @s aj.haruclaire_v3.rig_loaded run function animated_java:haruclaire_v3/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:haruclaire_v3/zzzzzzzz/animations/tick
function #animated_java:haruclaire_v3/on_tick/as_root